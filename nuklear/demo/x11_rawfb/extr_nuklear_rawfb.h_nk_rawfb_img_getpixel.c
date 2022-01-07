
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rawfb_image {int const h; int const w; unsigned char* pixels; int const pitch; scalar_t__ format; int pl; } ;
struct nk_color {unsigned char a; int b; int g; int r; int member_3; int member_2; int member_1; int member_0; } ;


 int NK_ASSERT (struct rawfb_image const*) ;
 scalar_t__ NK_FONT_ATLAS_ALPHA8 ;
 struct nk_color nk_rawfb_int2color (unsigned int,int ) ;

__attribute__((used)) static struct nk_color
nk_rawfb_img_getpixel(const struct rawfb_image *img, const int x0, const int y0)
{
    struct nk_color col = {0, 0, 0, 0};
    unsigned char *ptr;
    unsigned int pixel;
    NK_ASSERT(img);
    if (y0 < img->h && y0 >= 0 && x0 >= 0 && x0 < img->w) {
        ptr = img->pixels + (img->pitch * y0);

        if (img->format == NK_FONT_ATLAS_ALPHA8) {
            col.a = ptr[x0];
            col.b = col.g = col.r = 0xff;
        } else {
     pixel = ((unsigned int *)ptr)[x0];
     col = nk_rawfb_int2color(pixel, img->pl);
        }
    } return col;
}
