
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {TYPE_1__* driver; int src; } ;
struct mp_image {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* map ) (struct ra_hwdec_mapper*) ;} ;


 int mp_image_setrefp (int *,struct mp_image*) ;
 int ra_hwdec_mapper_unmap (struct ra_hwdec_mapper*) ;
 scalar_t__ stub1 (struct ra_hwdec_mapper*) ;

int ra_hwdec_mapper_map(struct ra_hwdec_mapper *mapper, struct mp_image *img)
{
    ra_hwdec_mapper_unmap(mapper);
    mp_image_setrefp(&mapper->src, img);
    if (mapper->driver->map(mapper) < 0) {
        ra_hwdec_mapper_unmap(mapper);
        return -1;
    }
    return 0;
}
