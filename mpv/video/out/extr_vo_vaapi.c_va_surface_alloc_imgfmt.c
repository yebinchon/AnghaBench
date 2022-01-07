
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fourcc; } ;
struct TYPE_4__ {scalar_t__ image_id; TYPE_1__ format; } ;
struct va_surface {TYPE_2__ image; } ;
struct priv {int dummy; } ;
struct mp_image {int dummy; } ;
typedef int VAImageFormat ;


 scalar_t__ VA_INVALID_ID ;
 int va_fourcc_to_imgfmt (int ) ;
 int * va_image_format_from_imgfmt (struct priv*,int) ;
 scalar_t__ va_surface_image_alloc (struct va_surface*,int *) ;
 struct va_surface* va_surface_in_mp_image (struct mp_image*) ;

__attribute__((used)) static int va_surface_alloc_imgfmt(struct priv *priv, struct mp_image *img,
                                   int imgfmt)
{
    struct va_surface *p = va_surface_in_mp_image(img);
    if (!p)
        return -1;


    if (p->image.image_id != VA_INVALID_ID &&
        va_fourcc_to_imgfmt(p->image.format.fourcc) == imgfmt)
        return 0;
    VAImageFormat *format = va_image_format_from_imgfmt(priv, imgfmt);
    if (!format)
        return -1;
    if (va_surface_image_alloc(p, format) < 0)
        return -1;
    return 0;
}
