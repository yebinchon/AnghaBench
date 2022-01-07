
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {int dxgi_swapchain; scalar_t__ d3d11_context; } ;


 int ID3D11DeviceContext_Flush (scalar_t__) ;
 int SAFE_RELEASE (int) ;
 int d3d11_backbuffer_release (struct ra_ctx*) ;

__attribute__((used)) static void d3d11_swapchain_surface_destroy(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    bool had_swapchain = p->dxgi_swapchain;
    SAFE_RELEASE(p->dxgi_swapchain);
    d3d11_backbuffer_release(ctx);




    if (had_swapchain && p->d3d11_context)
        ID3D11DeviceContext_Flush(p->d3d11_context);
}
