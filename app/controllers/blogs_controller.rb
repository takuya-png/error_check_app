class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to new_blog_path
    else
      render :new
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:name, :email, :content)
    end
end

