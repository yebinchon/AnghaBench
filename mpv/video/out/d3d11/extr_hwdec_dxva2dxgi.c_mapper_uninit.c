
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {struct priv* priv; } ;
struct priv {int queue_len; int dev11; int dev9; int ctx11; int * queue; } ;


 int SAFE_RELEASE (int ) ;
 int surf_destroy (struct ra_hwdec_mapper*,int ) ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;

    for (int i = 0; i < p->queue_len; i++)
        surf_destroy(mapper, p->queue[i]);

    SAFE_RELEASE(p->ctx11);
    SAFE_RELEASE(p->dev9);
    SAFE_RELEASE(p->dev11);
}
