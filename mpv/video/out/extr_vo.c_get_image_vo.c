
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {TYPE_1__* driver; } ;
struct mp_image {int dummy; } ;
struct TYPE_2__ {struct mp_image* (* get_image ) (struct vo*,int,int,int,int) ;} ;


 struct mp_image* stub1 (struct vo*,int,int,int,int) ;

__attribute__((used)) static struct mp_image *get_image_vo(void *ctx, int imgfmt, int w, int h,
                                     int stride_align)
{
    struct vo *vo = ctx;
    return vo->driver->get_image(vo, imgfmt, w, h, stride_align);
}
