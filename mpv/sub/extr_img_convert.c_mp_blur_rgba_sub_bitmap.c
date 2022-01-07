
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sub_bitmap {int bitmap; int stride; int h; int w; } ;
struct mp_image {int * planes; int * stride; int member_0; } ;


 int IMGFMT_BGRA ;
 struct mp_image* mp_image_alloc (int ,int ,int ) ;
 int mp_image_copy (struct mp_image*,struct mp_image*) ;
 int mp_image_set_size (struct mp_image*,int ,int ) ;
 int mp_image_setfmt (struct mp_image*,int ) ;
 int mp_image_sw_blur_scale (struct mp_image*,struct mp_image*,double) ;
 int talloc_free (struct mp_image*) ;

void mp_blur_rgba_sub_bitmap(struct sub_bitmap *d, double gblur)
{
    struct mp_image *tmp1 = mp_image_alloc(IMGFMT_BGRA, d->w, d->h);
    if (tmp1) {
        struct mp_image s = {0};
        mp_image_setfmt(&s, IMGFMT_BGRA);
        mp_image_set_size(&s, d->w, d->h);
        s.stride[0] = d->stride;
        s.planes[0] = d->bitmap;

        mp_image_copy(tmp1, &s);

        mp_image_sw_blur_scale(&s, tmp1, gblur);
    }
    talloc_free(tmp1);
}
