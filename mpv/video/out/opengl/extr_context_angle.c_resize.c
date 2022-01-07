
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {TYPE_1__* vo; int swapchain; struct priv* priv; } ;
struct priv {scalar_t__ dxgi_swapchain; } ;
struct TYPE_2__ {int dheight; int dwidth; } ;


 int d3d11_backbuffer_resize (struct ra_ctx*) ;
 int eglWaitClient () ;
 int ra_gl_ctx_resize (int ,int ,int ,int ) ;

__attribute__((used)) static void resize(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    if (p->dxgi_swapchain)
        d3d11_backbuffer_resize(ctx);
    else
        eglWaitClient();
    ra_gl_ctx_resize(ctx->swapchain, ctx->vo->dwidth, ctx->vo->dheight, 0);
}
