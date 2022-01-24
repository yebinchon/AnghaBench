#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vo {int dummy; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  egl_context; int /*<<< orphan*/  egl_backbuffer; int /*<<< orphan*/  egl_display; int /*<<< orphan*/  egl_config; int /*<<< orphan*/  d3d11_backbuffer; int /*<<< orphan*/  dxgi_swapchain; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EGLint ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_D3D_TEXTURE_ANGLE ; 
 int /*<<< orphan*/  EGL_NONE ; 
 int /*<<< orphan*/  EGL_TEXTURE_2D ; 
 int /*<<< orphan*/  EGL_TEXTURE_FORMAT ; 
 int /*<<< orphan*/  EGL_TEXTURE_RGBA ; 
 int /*<<< orphan*/  EGL_TEXTURE_TARGET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_ID3D11Texture2D ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;
    HRESULT hr;

    hr = FUNC1(p->dxgi_swapchain, 0, &IID_ID3D11Texture2D,
        (void**)&p->d3d11_backbuffer);
    if (FUNC0(hr)) {
        FUNC2(vo, "Couldn't get swap chain back buffer\n");
        return false;
    }

    EGLint pbuffer_attributes[] = {
        EGL_TEXTURE_FORMAT, EGL_TEXTURE_RGBA,
        EGL_TEXTURE_TARGET, EGL_TEXTURE_2D,
        EGL_NONE,
    };
    p->egl_backbuffer = FUNC3(p->egl_display,
        EGL_D3D_TEXTURE_ANGLE, p->d3d11_backbuffer, p->egl_config,
        pbuffer_attributes);
    if (!p->egl_backbuffer) {
        FUNC2(vo, "Couldn't create EGL pbuffer\n");
        return false;
    }

    FUNC4(p->egl_display, p->egl_backbuffer, p->egl_backbuffer,
                   p->egl_context);
    return true;
}