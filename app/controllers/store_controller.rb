class StoreController < ApplicationController
  def index
    @products = Product.all
    @time = Time.now
  end

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
end
