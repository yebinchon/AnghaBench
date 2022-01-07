
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {scalar_t__ d3d11_device; scalar_t__ dxgi_swapchain; } ;


 int DwmEnableMMCSS (int ) ;
 int FALSE ;
 int context_destroy (struct ra_ctx*) ;
 int d3d11_device_destroy (struct ra_ctx*) ;
 int d3d11_swapchain_surface_destroy (struct ra_ctx*) ;
 int d3d9_device_destroy (struct ra_ctx*) ;
 int egl_window_surface_destroy (struct ra_ctx*) ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int vo_w32_uninit (int ) ;

__attribute__((used)) static void angle_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    ra_gl_ctx_uninit(ctx);

    DwmEnableMMCSS(FALSE);





    if (p->dxgi_swapchain)
        d3d11_swapchain_surface_destroy(ctx);
    else
        egl_window_surface_destroy(ctx);

    context_destroy(ctx);


    if (p->d3d11_device)
        d3d11_device_destroy(ctx);
    else
        d3d9_device_destroy(ctx);

    vo_w32_uninit(ctx->vo);
}
