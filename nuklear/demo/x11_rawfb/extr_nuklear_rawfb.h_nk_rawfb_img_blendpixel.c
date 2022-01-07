
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rawfb_image {int dummy; } ;
struct nk_color {int a; unsigned char r; unsigned char g; unsigned char b; } ;


 struct nk_color nk_rawfb_img_getpixel (struct rawfb_image const*,int const,int const) ;
 int nk_rawfb_img_setpixel (struct rawfb_image const*,int const,int const,struct nk_color) ;

__attribute__((used)) static void
nk_rawfb_img_blendpixel(const struct rawfb_image *img,
    const int x0, const int y0, struct nk_color col)
{
    struct nk_color col2;
    unsigned char inv_a;
    if (col.a == 0)
        return;

    inv_a = 0xff - col.a;
    col2 = nk_rawfb_img_getpixel(img, x0, y0);
    col.r = (col.r * col.a + col2.r * inv_a) >> 8;
    col.g = (col.g * col.a + col2.g * inv_a) >> 8;
    col.b = (col.b * col.a + col2.b * inv_a) >> 8;
    nk_rawfb_img_setpixel(img, x0, y0, col);
}
