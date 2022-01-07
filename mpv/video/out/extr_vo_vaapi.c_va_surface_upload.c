
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int image_id; } ;
struct va_surface {scalar_t__ is_derived; int ctx; TYPE_1__ image; int id; int display; } ;
struct priv {int dummy; } ;
struct mp_image {scalar_t__ w; scalar_t__ h; int imgfmt; } ;
typedef int VAStatus ;


 int CHECK_VA_STATUS (int ,char*) ;
 int assert (int) ;
 int mp_image_copy (struct mp_image*,struct mp_image*) ;
 int mp_image_set_size (struct mp_image*,scalar_t__,scalar_t__) ;
 int vaPutImage (int ,int ,int ,int ,int ,scalar_t__,scalar_t__,int ,int ,scalar_t__,scalar_t__) ;
 int va_image_map (int ,TYPE_1__*,struct mp_image*) ;
 int va_image_unmap (int ,TYPE_1__*) ;
 scalar_t__ va_surface_alloc_imgfmt (struct priv*,struct mp_image*,int ) ;
 int va_surface_image_destroy (struct va_surface*) ;
 struct va_surface* va_surface_in_mp_image (struct mp_image*) ;

__attribute__((used)) static int va_surface_upload(struct priv *priv, struct mp_image *va_dst,
                             struct mp_image *sw_src)
{
    struct va_surface *p = va_surface_in_mp_image(va_dst);
    if (!p)
        return -1;

    if (va_surface_alloc_imgfmt(priv, va_dst, sw_src->imgfmt) < 0)
        return -1;

    struct mp_image img;
    if (!va_image_map(p->ctx, &p->image, &img))
        return -1;
    assert(sw_src->w <= img.w && sw_src->h <= img.h);
    mp_image_set_size(&img, sw_src->w, sw_src->h);
    mp_image_copy(&img, sw_src);
    va_image_unmap(p->ctx, &p->image);

    if (!p->is_derived) {
        VAStatus status = vaPutImage(p->display, p->id,
                                     p->image.image_id,
                                     0, 0, sw_src->w, sw_src->h,
                                     0, 0, sw_src->w, sw_src->h);
        if (!CHECK_VA_STATUS(p->ctx, "vaPutImage()"))
            return -1;
    }

    if (p->is_derived)
        va_surface_image_destroy(p);
    return 0;
}
