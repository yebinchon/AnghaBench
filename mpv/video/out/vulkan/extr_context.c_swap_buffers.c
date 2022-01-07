
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_swapchain {int ctx; struct priv* priv; } ;
struct TYPE_2__ {int (* swap_buffers ) (int ) ;} ;
struct priv {TYPE_1__ params; int swapchain; } ;


 int pl_swapchain_swap_buffers (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void swap_buffers(struct ra_swapchain *sw)
{
    struct priv *p = sw->priv;
    pl_swapchain_swap_buffers(p->swapchain);
    if (p->params.swap_buffers)
        p->params.swap_buffers(sw->ctx);
}
