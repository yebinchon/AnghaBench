
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {int src; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* unmap ) (struct ra_hwdec_mapper*) ;} ;


 int mp_image_unrefp (int *) ;
 int stub1 (struct ra_hwdec_mapper*) ;

void ra_hwdec_mapper_unmap(struct ra_hwdec_mapper *mapper)
{
    if (mapper->driver->unmap)
        mapper->driver->unmap(mapper);
    mp_image_unrefp(&mapper->src);
}
