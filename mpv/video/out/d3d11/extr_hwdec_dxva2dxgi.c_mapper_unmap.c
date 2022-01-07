
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {scalar_t__* tex; struct priv* priv; } ;
struct priv {size_t queue_pos; size_t queue_len; TYPE_1__** queue; } ;
struct TYPE_2__ {scalar_t__ tex; } ;


 int surf_release (struct ra_hwdec_mapper*) ;

__attribute__((used)) static void mapper_unmap(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;

    if (p->queue_pos < p->queue_len &&
        p->queue[p->queue_pos]->tex == mapper->tex[0])
    {
        surf_release(mapper);
        mapper->tex[0] = ((void*)0);
    }
}
