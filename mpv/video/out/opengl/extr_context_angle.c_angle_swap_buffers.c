
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {scalar_t__ dxgi_swapchain; } ;


 int d3d11_swap_buffers (struct ra_ctx*) ;
 int egl_swap_buffers (struct ra_ctx*) ;

__attribute__((used)) static void angle_swap_buffers(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    if (p->dxgi_swapchain)
        d3d11_swap_buffers(ctx);
    else
        egl_swap_buffers(ctx);
}
