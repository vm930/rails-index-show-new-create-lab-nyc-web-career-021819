class CouponsController < ApplicationController
  #index
  def index
  @coupons = Coupon.all
  end 

  #show
  def show 
  @coupon = Coupon.find(
  params[:id])
  end 

  #new
  def new
    @coupon = Coupon.new
  end 

  #create
  def create 
  # byebug
  @coupon = Coupon.create(coupon_code:
  params[:coupon][:coupon_code], store:params[:coupon][:store])
  redirect_to coupon_path(@coupon)
  end 

end
