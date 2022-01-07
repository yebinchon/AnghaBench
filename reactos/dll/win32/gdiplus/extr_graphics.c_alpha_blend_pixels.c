
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PixelFormat ;
typedef int INT ;
typedef int GpStatus ;
typedef int GpGraphics ;
typedef int BYTE ;


 int alpha_blend_pixels_hrgn (int *,int ,int ,int const*,int ,int ,int ,int *,int ) ;

__attribute__((used)) static GpStatus alpha_blend_pixels(GpGraphics *graphics, INT dst_x, INT dst_y,
    const BYTE *src, INT src_width, INT src_height, INT src_stride, PixelFormat fmt)
{
    return alpha_blend_pixels_hrgn(graphics, dst_x, dst_y, src, src_width, src_height, src_stride, ((void*)0), fmt);
}
