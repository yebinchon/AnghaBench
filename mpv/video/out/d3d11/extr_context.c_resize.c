
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {TYPE_1__* vo; int ra; struct priv* priv; } ;
struct priv {int backbuffer; int swapchain; } ;
struct TYPE_2__ {int dheight; int dwidth; } ;
typedef int HRESULT ;


 int DXGI_FORMAT_UNKNOWN ;
 scalar_t__ FAILED (int ) ;
 int IDXGISwapChain_ResizeBuffers (int ,int ,int ,int ,int ,int ) ;
 int MP_FATAL (struct ra_ctx*,char*,int ) ;
 int get_backbuffer (struct ra_ctx*) ;
 int mp_HRESULT_to_str (int ) ;
 int ra_tex_free (int ,int *) ;

__attribute__((used)) static bool resize(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    HRESULT hr;

    ra_tex_free(ctx->ra, &p->backbuffer);

    hr = IDXGISwapChain_ResizeBuffers(p->swapchain, 0, ctx->vo->dwidth,
        ctx->vo->dheight, DXGI_FORMAT_UNKNOWN, 0);
    if (FAILED(hr)) {
        MP_FATAL(ctx, "Couldn't resize swapchain: %s\n", mp_HRESULT_to_str(hr));
        return 0;
    }

    p->backbuffer = get_backbuffer(ctx);

    return 1;
}
