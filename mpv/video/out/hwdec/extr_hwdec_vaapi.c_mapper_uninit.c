
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {TYPE_1__* owner; } ;
struct priv_owner {int (* interop_uninit ) (struct ra_hwdec_mapper*) ;} ;
struct TYPE_2__ {struct priv_owner* priv; } ;


 int stub1 (struct ra_hwdec_mapper*) ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *p_owner = mapper->owner->priv;
    if (p_owner->interop_uninit) {
        p_owner->interop_uninit(mapper);
    }
}
