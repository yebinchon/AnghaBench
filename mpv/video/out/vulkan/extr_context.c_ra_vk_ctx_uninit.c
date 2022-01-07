
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_ctx {TYPE_3__* swapchain; TYPE_2__* ra; } ;
struct priv {int swapchain; struct mpvk_ctx* vk; } ;
struct mpvk_ctx {int vulkan; int * gpu; } ;
struct TYPE_6__ {struct priv* priv; } ;
struct TYPE_5__ {TYPE_1__* fns; } ;
struct TYPE_4__ {int (* destroy ) (TYPE_2__*) ;} ;


 int TA_FREEP (TYPE_3__**) ;
 int pl_gpu_finish (int *) ;
 int pl_swapchain_destroy (int *) ;
 int pl_vulkan_destroy (int *) ;
 int stub1 (TYPE_2__*) ;

void ra_vk_ctx_uninit(struct ra_ctx *ctx)
{
    if (!ctx->swapchain)
        return;

    struct priv *p = ctx->swapchain->priv;
    struct mpvk_ctx *vk = p->vk;

    if (ctx->ra) {
        pl_gpu_finish(vk->gpu);
        pl_swapchain_destroy(&p->swapchain);
        ctx->ra->fns->destroy(ctx->ra);
        ctx->ra = ((void*)0);
    }

    vk->gpu = ((void*)0);
    pl_vulkan_destroy(&vk->vulkan);
    TA_FREEP(&ctx->swapchain);
}
