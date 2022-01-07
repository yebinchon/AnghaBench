
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int egl_context; int egl_backbuffer; int egl_display; int egl_config; int d3d11_backbuffer; int dxgi_swapchain; } ;
typedef int HRESULT ;
typedef int EGLint ;


 int EGL_D3D_TEXTURE_ANGLE ;
 int EGL_NONE ;
 int EGL_TEXTURE_2D ;
 int EGL_TEXTURE_FORMAT ;
 int EGL_TEXTURE_RGBA ;
 int EGL_TEXTURE_TARGET ;
 scalar_t__ FAILED (int ) ;
 int IDXGISwapChain_GetBuffer (int ,int ,int *,void**) ;
 int IID_ID3D11Texture2D ;
 int MP_FATAL (struct vo*,char*) ;
 int eglCreatePbufferFromClientBuffer (int ,int ,int ,int ,int *) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;

__attribute__((used)) static bool d3d11_backbuffer_get(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;
    HRESULT hr;

    hr = IDXGISwapChain_GetBuffer(p->dxgi_swapchain, 0, &IID_ID3D11Texture2D,
        (void**)&p->d3d11_backbuffer);
    if (FAILED(hr)) {
        MP_FATAL(vo, "Couldn't get swap chain back buffer\n");
        return 0;
    }

    EGLint pbuffer_attributes[] = {
        EGL_TEXTURE_FORMAT, EGL_TEXTURE_RGBA,
        EGL_TEXTURE_TARGET, EGL_TEXTURE_2D,
        EGL_NONE,
    };
    p->egl_backbuffer = eglCreatePbufferFromClientBuffer(p->egl_display,
        EGL_D3D_TEXTURE_ANGLE, p->d3d11_backbuffer, p->egl_config,
        pbuffer_attributes);
    if (!p->egl_backbuffer) {
        MP_FATAL(vo, "Couldn't create EGL pbuffer\n");
        return 0;
    }

    eglMakeCurrent(p->egl_display, p->egl_backbuffer, p->egl_backbuffer,
                   p->egl_context);
    return 1;
}
