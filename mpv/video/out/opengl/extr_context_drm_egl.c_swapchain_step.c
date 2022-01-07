
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {struct priv* priv; } ;
struct TYPE_4__ {scalar_t__ num_bos; TYPE_1__** bo_queue; int surface; } ;
struct priv {TYPE_2__ gbm; } ;
struct TYPE_3__ {scalar_t__ bo; } ;


 int dequeue_bo (struct ra_ctx*) ;
 int gbm_surface_release_buffer (int ,scalar_t__) ;

__attribute__((used)) static void swapchain_step(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (!(p->gbm.num_bos > 0))
        return;

    if (p->gbm.bo_queue[0]->bo)
        gbm_surface_release_buffer(p->gbm.surface, p->gbm.bo_queue[0]->bo);
    dequeue_bo(ctx);
}
