
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {TYPE_1__* swapchain; } ;
struct priv {struct mpvk_ctx* vk; } ;
struct mpvk_ctx {int dummy; } ;
struct TYPE_2__ {struct priv* priv; int * fns; } ;


 int vulkan_swapchain ;

struct mpvk_ctx *ra_vk_ctx_get(struct ra_ctx *ctx)
{
    if (ctx->swapchain->fns != &vulkan_swapchain)
        return ((void*)0);

    struct priv *p = ctx->swapchain->priv;
    return p->vk;
}
