
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ptr; } ;
struct nk_image {TYPE_1__ handle; } ;
struct nk_color {int dummy; } ;
struct TYPE_4__ {int memory; } ;
typedef int GpImage ;


 int GdipDrawImageRectI (int ,int *,short,short,unsigned short,unsigned short) ;
 TYPE_2__ gdip ;

__attribute__((used)) static void
nk_gdip_draw_image(short x, short y, unsigned short w, unsigned short h,
    struct nk_image img, struct nk_color col)
{
    GpImage *image = img.handle.ptr;
    GdipDrawImageRectI(gdip.memory, image, x, y, w, h);
}
