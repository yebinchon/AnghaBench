#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* BindFramebuffer ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* FramebufferTexture2D ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* DXLockObjectsNV ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DXRegisterObjectNV ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GenTextures ) (int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DXSetResourceShareHandleNV ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct priv {int /*<<< orphan*/  texture; int /*<<< orphan*/  main_fb; int /*<<< orphan*/  rtarget_h; int /*<<< orphan*/  device_h; int /*<<< orphan*/  rtarget; int /*<<< orphan*/  device; int /*<<< orphan*/  backbuffer; int /*<<< orphan*/  swapchain; TYPE_1__ gl; } ;
struct TYPE_5__ {scalar_t__ Format; scalar_t__ Height; scalar_t__ Width; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  IDirect3DSwapChain9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_1__ GL ;
typedef  TYPE_2__ D3DSURFACE_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  D3DBACKBUFFER_TYPE_MONO ; 
 int /*<<< orphan*/  D3DMULTISAMPLE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDirect3DSwapChain9Ex ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WGL_ACCESS_WRITE_DISCARD_NV ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    GL *gl = &p->gl;
    HRESULT hr;

    IDirect3DSwapChain9 *sw9;
    hr = FUNC2(p->device, 0, &sw9);
    if (FUNC0(hr)) {
        FUNC6(ctx->vo, "Couldn't get swap chain: %s\n", FUNC9(hr));
        return -1;
    }

    hr = FUNC5(sw9, &IID_IDirect3DSwapChain9Ex,
        (void**)&p->swapchain);
    if (FUNC0(hr)) {
        FUNC8(sw9);
        FUNC6(ctx->vo, "Obtained swap chain is not IDirect3DSwapChain9Ex: %s\n",
               FUNC9(hr));
        return -1;
    }
    FUNC8(sw9);

    hr = FUNC4(p->swapchain, 0,
        D3DBACKBUFFER_TYPE_MONO, &p->backbuffer);
    if (FUNC0(hr)) {
        FUNC6(ctx->vo, "Couldn't get backbuffer: %s\n", FUNC9(hr));
        return -1;
    }

    // Get the format of the backbuffer
    D3DSURFACE_DESC bb_desc = { 0 };
    FUNC3(p->backbuffer, &bb_desc);

    FUNC7(ctx->vo, "DX_interop backbuffer size: %ux%u\n",
        (unsigned)bb_desc.Width, (unsigned)bb_desc.Height);
    FUNC7(ctx->vo, "DX_interop backbuffer format: %u\n",
        (unsigned)bb_desc.Format);

    // Create a rendertarget with the same format as the backbuffer for
    // rendering from OpenGL
    HANDLE share_handle = NULL;
    hr = FUNC1(p->device, bb_desc.Width,
        bb_desc.Height, bb_desc.Format, D3DMULTISAMPLE_NONE, 0, FALSE,
        &p->rtarget, &share_handle);
    if (FUNC0(hr)) {
        FUNC6(ctx->vo, "Couldn't create rendertarget: %s\n", FUNC9(hr));
        return -1;
    }

    // Register the share handle with WGL_NV_DX_interop. Nvidia does not
    // require the use of share handles, but Intel does.
    if (share_handle)
        gl->DXSetResourceShareHandleNV(p->rtarget, share_handle);

    // Create the OpenGL-side texture
    gl->GenTextures(1, &p->texture);

    // Now share the rendertarget with OpenGL as a texture
    p->rtarget_h = gl->DXRegisterObjectNV(p->device_h, p->rtarget, p->texture,
        GL_TEXTURE_2D, WGL_ACCESS_WRITE_DISCARD_NV);
    if (!p->rtarget_h) {
        FUNC6(ctx->vo, "Couldn't share rendertarget with OpenGL: %s\n",
               FUNC10());
        return -1;
    }

    // Lock the rendertarget for use from OpenGL. This will only be unlocked in
    // swap_buffers() when it is blitted to the real Direct3D backbuffer.
    if (!gl->DXLockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        FUNC6(ctx->vo, "Couldn't lock rendertarget: %s\n",
               FUNC10());
        return -1;
    }

    gl->BindFramebuffer(GL_FRAMEBUFFER, p->main_fb);
    gl->FramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
        GL_TEXTURE_2D, p->texture, 0);
    gl->BindFramebuffer(GL_FRAMEBUFFER, 0);

    return 0;
}