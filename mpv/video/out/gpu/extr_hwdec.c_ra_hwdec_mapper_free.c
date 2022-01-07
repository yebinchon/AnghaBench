
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* uninit ) (struct ra_hwdec_mapper*) ;} ;


 int ra_hwdec_mapper_unmap (struct ra_hwdec_mapper*) ;
 int stub1 (struct ra_hwdec_mapper*) ;
 int talloc_free (struct ra_hwdec_mapper*) ;

void ra_hwdec_mapper_free(struct ra_hwdec_mapper **mapper)
{
    struct ra_hwdec_mapper *p = *mapper;
    if (p) {
        ra_hwdec_mapper_unmap(p);
        p->driver->uninit(p);
        talloc_free(p);
    }
    *mapper = ((void*)0);
}
