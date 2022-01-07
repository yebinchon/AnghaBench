
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {struct gpu_priv* priv; } ;
struct ra_swapchain {TYPE_2__* fns; } ;
struct gpu_priv {TYPE_1__* ctx; } ;
struct TYPE_4__ {int (* swap_buffers ) (struct ra_swapchain*) ;} ;
struct TYPE_3__ {struct ra_swapchain* swapchain; } ;


 int stub1 (struct ra_swapchain*) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct gpu_priv *p = vo->priv;
    struct ra_swapchain *sw = p->ctx->swapchain;
    sw->fns->swap_buffers(sw);
}
