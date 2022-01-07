
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct TYPE_4__ {int (* BindFramebuffer ) (int ,int ) ;int (* FramebufferTexture2D ) (int ,int ,int ,int ,int ) ;int (* DXLockObjectsNV ) (int ,int,int *) ;int (* DXRegisterObjectNV ) (int ,int ,int ,int ,int ) ;int (* GenTextures ) (int,int *) ;int (* DXSetResourceShareHandleNV ) (int ,int *) ;} ;
struct priv {int texture; int main_fb; int rtarget_h; int device_h; int rtarget; int device; int backbuffer; int swapchain; TYPE_1__ gl; } ;
struct TYPE_5__ {scalar_t__ Format; scalar_t__ Height; scalar_t__ Width; int member_0; } ;
typedef int IDirect3DSwapChain9 ;
typedef int HRESULT ;
typedef int * HANDLE ;
typedef TYPE_1__ GL ;
typedef TYPE_2__ D3DSURFACE_DESC ;


 int D3DBACKBUFFER_TYPE_MONO ;
 int D3DMULTISAMPLE_NONE ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_FRAMEBUFFER ;
 int GL_TEXTURE_2D ;
 int IDirect3DDevice9Ex_CreateRenderTarget (int ,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int *,int **) ;
 int IDirect3DDevice9Ex_GetSwapChain (int ,int ,int **) ;
 int IDirect3DSurface9_GetDesc (int ,TYPE_2__*) ;
 int IDirect3DSwapChain9Ex_GetBackBuffer (int ,int ,int ,int *) ;
 int IDirect3DSwapChain9_QueryInterface (int *,int *,void**) ;
 int IID_IDirect3DSwapChain9Ex ;
 int MP_ERR (int ,char*,int ) ;
 int MP_VERBOSE (int ,char*,unsigned int,...) ;
 int SAFE_RELEASE (int *) ;
 int WGL_ACCESS_WRITE_DISCARD_NV ;
 int mp_HRESULT_to_str (int ) ;
 int mp_LastError_to_str () ;
 int stub1 (int ,int *) ;
 int stub2 (int,int *) ;
 int stub3 (int ,int ,int ,int ,int ) ;
 int stub4 (int ,int,int *) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ,int ,int ,int ) ;
 int stub7 (int ,int ) ;

__attribute__((used)) static int d3d_size_dependent_create(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    GL *gl = &p->gl;
    HRESULT hr;

    IDirect3DSwapChain9 *sw9;
    hr = IDirect3DDevice9Ex_GetSwapChain(p->device, 0, &sw9);
    if (FAILED(hr)) {
        MP_ERR(ctx->vo, "Couldn't get swap chain: %s\n", mp_HRESULT_to_str(hr));
        return -1;
    }

    hr = IDirect3DSwapChain9_QueryInterface(sw9, &IID_IDirect3DSwapChain9Ex,
        (void**)&p->swapchain);
    if (FAILED(hr)) {
        SAFE_RELEASE(sw9);
        MP_ERR(ctx->vo, "Obtained swap chain is not IDirect3DSwapChain9Ex: %s\n",
               mp_HRESULT_to_str(hr));
        return -1;
    }
    SAFE_RELEASE(sw9);

    hr = IDirect3DSwapChain9Ex_GetBackBuffer(p->swapchain, 0,
        D3DBACKBUFFER_TYPE_MONO, &p->backbuffer);
    if (FAILED(hr)) {
        MP_ERR(ctx->vo, "Couldn't get backbuffer: %s\n", mp_HRESULT_to_str(hr));
        return -1;
    }


    D3DSURFACE_DESC bb_desc = { 0 };
    IDirect3DSurface9_GetDesc(p->backbuffer, &bb_desc);

    MP_VERBOSE(ctx->vo, "DX_interop backbuffer size: %ux%u\n",
        (unsigned)bb_desc.Width, (unsigned)bb_desc.Height);
    MP_VERBOSE(ctx->vo, "DX_interop backbuffer format: %u\n",
        (unsigned)bb_desc.Format);



    HANDLE share_handle = ((void*)0);
    hr = IDirect3DDevice9Ex_CreateRenderTarget(p->device, bb_desc.Width,
        bb_desc.Height, bb_desc.Format, D3DMULTISAMPLE_NONE, 0, FALSE,
        &p->rtarget, &share_handle);
    if (FAILED(hr)) {
        MP_ERR(ctx->vo, "Couldn't create rendertarget: %s\n", mp_HRESULT_to_str(hr));
        return -1;
    }



    if (share_handle)
        gl->DXSetResourceShareHandleNV(p->rtarget, share_handle);


    gl->GenTextures(1, &p->texture);


    p->rtarget_h = gl->DXRegisterObjectNV(p->device_h, p->rtarget, p->texture,
        GL_TEXTURE_2D, WGL_ACCESS_WRITE_DISCARD_NV);
    if (!p->rtarget_h) {
        MP_ERR(ctx->vo, "Couldn't share rendertarget with OpenGL: %s\n",
               mp_LastError_to_str());
        return -1;
    }



    if (!gl->DXLockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        MP_ERR(ctx->vo, "Couldn't lock rendertarget: %s\n",
               mp_LastError_to_str());
        return -1;
    }

    gl->BindFramebuffer(GL_FRAMEBUFFER, p->main_fb);
    gl->FramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
        GL_TEXTURE_2D, p->texture, 0);
    gl->BindFramebuffer(GL_FRAMEBUFFER, 0);

    return 0;
}
