
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bpp; int flags; } ;
struct mp_image {scalar_t__ imgfmt; scalar_t__ w; scalar_t__ h; int num_planes; int * planes; TYPE_1__ fmt; int * stride; } ;


 int AVPALETTE_SIZE ;
 int MP_IMGFLAG_PAL ;
 int assert (int) ;
 int memcpy (int ,int ,int ) ;
 int memcpy_pic (int ,int ,int,int,int ,int ) ;
 int mp_image_is_writeable (struct mp_image*) ;
 int mp_image_plane_h (struct mp_image*,int) ;
 int mp_image_plane_w (struct mp_image*,int) ;

void mp_image_copy(struct mp_image *dst, struct mp_image *src)
{
    assert(dst->imgfmt == src->imgfmt);
    assert(dst->w == src->w && dst->h == src->h);
    assert(mp_image_is_writeable(dst));
    for (int n = 0; n < dst->num_planes; n++) {
        int line_bytes = (mp_image_plane_w(dst, n) * dst->fmt.bpp[n] + 7) / 8;
        int plane_h = mp_image_plane_h(dst, n);
        memcpy_pic(dst->planes[n], src->planes[n], line_bytes, plane_h,
                   dst->stride[n], src->stride[n]);
    }
    if (dst->fmt.flags & MP_IMGFLAG_PAL)
        memcpy(dst->planes[1], src->planes[1], AVPALETTE_SIZE);
}
