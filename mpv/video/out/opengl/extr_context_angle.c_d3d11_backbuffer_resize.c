
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int sc_width; int sc_height; int dxgi_swapchain; } ;
typedef int HRESULT ;


 int DXGI_FORMAT_UNKNOWN ;
 scalar_t__ FAILED (int ) ;
 int IDXGISwapChain_ResizeBuffers (int ,int ,int,int,int ,int ) ;
 int MP_FATAL (struct vo*,char*,...) ;
 int d3d11_backbuffer_get (struct ra_ctx*) ;
 int d3d11_backbuffer_release (struct ra_ctx*) ;
 int mp_HRESULT_to_str (int ) ;
 int update_sizes (struct ra_ctx*) ;

__attribute__((used)) static void d3d11_backbuffer_resize(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;
    HRESULT hr;

    int old_sc_width = p->sc_width;
    int old_sc_height = p->sc_height;

    update_sizes(ctx);

    if (old_sc_width == p->sc_width && old_sc_height == p->sc_height)
        return;



    d3d11_backbuffer_release(ctx);



    hr = IDXGISwapChain_ResizeBuffers(p->dxgi_swapchain, 0, p->sc_width,
        p->sc_height, DXGI_FORMAT_UNKNOWN, 0);
    if (FAILED(hr))
        MP_FATAL(vo, "Couldn't resize swapchain: %s\n", mp_HRESULT_to_str(hr));

    if (!d3d11_backbuffer_get(ctx))
        MP_FATAL(vo, "Couldn't get back buffer after resize\n");
}
