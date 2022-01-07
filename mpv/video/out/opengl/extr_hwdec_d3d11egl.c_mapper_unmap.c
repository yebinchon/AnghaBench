
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {int * tex; int ra; struct priv* priv; TYPE_1__* owner; } ;
struct priv_owner {int egl_display; int (* StreamConsumerReleaseKHR ) (int ,scalar_t__) ;} ;
struct priv {scalar_t__ egl_stream; } ;
struct TYPE_2__ {struct priv_owner* priv; } ;


 int ra_tex_free (int ,int *) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void mapper_unmap(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *o = mapper->owner->priv;
    struct priv *p = mapper->priv;

    for (int n = 0; n < 2; n++)
        ra_tex_free(mapper->ra, &mapper->tex[n]);
    if (p->egl_stream)
        o->StreamConsumerReleaseKHR(o->egl_display, p->egl_stream);
}
