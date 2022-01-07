
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_tex {int dummy; } ;
struct ra_ctx {int ra; struct priv* priv; } ;
struct priv {int swapchain; } ;
typedef int ID3D11Texture2D ;
typedef int ID3D11Resource ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IDXGISwapChain_GetBuffer (int ,int ,int *,void**) ;
 int IID_ID3D11Texture2D ;
 int MP_ERR (struct ra_ctx*,char*) ;
 int SAFE_RELEASE (int *) ;
 struct ra_tex* ra_d3d11_wrap_tex (int ,int *) ;

__attribute__((used)) static struct ra_tex *get_backbuffer(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ID3D11Texture2D *backbuffer = ((void*)0);
    struct ra_tex *tex = ((void*)0);
    HRESULT hr;

    hr = IDXGISwapChain_GetBuffer(p->swapchain, 0, &IID_ID3D11Texture2D,
                                  (void**)&backbuffer);
    if (FAILED(hr)) {
        MP_ERR(ctx, "Couldn't get swapchain image\n");
        goto done;
    }

    tex = ra_d3d11_wrap_tex(ctx->ra, (ID3D11Resource *)backbuffer);
done:
    SAFE_RELEASE(backbuffer);
    return tex;
}
