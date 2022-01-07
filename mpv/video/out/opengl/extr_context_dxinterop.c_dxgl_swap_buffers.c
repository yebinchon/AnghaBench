
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct TYPE_2__ {int (* DXLockObjectsNV ) (int ,int,int *) ;int (* DXUnlockObjectsNV ) (int ,int,int *) ;} ;
struct priv {int lost_device; int rtarget_h; int device_h; int device; int backbuffer; int rtarget; TYPE_1__ gl; } ;
typedef int HRESULT ;
typedef TYPE_1__ GL ;




 int D3DTEXF_NONE ;
 scalar_t__ FAILED (int) ;
 int IDirect3DDevice9Ex_PresentEx (int ,int *,int *,int *,int *,int ) ;
 int IDirect3DDevice9Ex_StretchRect (int ,int ,int *,int ,int *,int ) ;
 int MP_ERR (int ,char*,int ) ;
 int MP_VERBOSE (int ,char*) ;
 int dxgl_reset (struct ra_ctx*) ;
 int mp_HRESULT_to_str (int) ;
 int mp_LastError_to_str () ;
 int pump_message_loop () ;
 int stub1 (int ,int,int *) ;
 int stub2 (int ,int,int *) ;

__attribute__((used)) static void dxgl_swap_buffers(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    GL *gl = &p->gl;
    HRESULT hr;

    pump_message_loop();


    if (p->lost_device)
        dxgl_reset(ctx);
    if (p->lost_device)
        return;

    if (!gl->DXUnlockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        MP_ERR(ctx->vo, "Couldn't unlock rendertarget for present: %s\n",
               mp_LastError_to_str());
        return;
    }


    hr = IDirect3DDevice9Ex_StretchRect(p->device, p->rtarget, ((void*)0),
                                        p->backbuffer, ((void*)0), D3DTEXF_NONE);
    if (FAILED(hr)) {
        MP_ERR(ctx->vo, "Couldn't stretchrect for present: %s\n",
               mp_HRESULT_to_str(hr));
        return;
    }

    hr = IDirect3DDevice9Ex_PresentEx(p->device, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
    switch (hr) {
    case 128:
    case 129:
        MP_VERBOSE(ctx->vo, "Direct3D device lost! Resetting.\n");
        p->lost_device = 1;
        dxgl_reset(ctx);
        return;
    default:
        if (FAILED(hr))
            MP_ERR(ctx->vo, "Failed to present: %s\n", mp_HRESULT_to_str(hr));
    }

    if (!gl->DXLockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        MP_ERR(ctx->vo, "Couldn't lock rendertarget after present: %s\n",
               mp_LastError_to_str());
    }
}
