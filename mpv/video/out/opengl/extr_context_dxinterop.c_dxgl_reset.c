
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {TYPE_1__* vo; struct priv* priv; } ;
struct priv {scalar_t__ width; scalar_t__ height; scalar_t__ requested_swapinterval; scalar_t__ swapinterval; int lost_device; int device; } ;
struct TYPE_3__ {scalar_t__ dwidth; scalar_t__ dheight; } ;
typedef int HRESULT ;
typedef int D3DPRESENT_PARAMETERS ;


 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9Ex_ResetEx (int ,int *,int *) ;
 int MP_ERR (TYPE_1__*,char*,...) ;
 int MP_VERBOSE (TYPE_1__*,char*) ;
 scalar_t__ d3d_size_dependent_create (struct ra_ctx*) ;
 int d3d_size_dependent_destroy (struct ra_ctx*) ;
 int fill_presentparams (struct ra_ctx*,int *) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static void dxgl_reset(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    HRESULT hr;


    if (ctx->vo->dwidth == p->width && ctx->vo->dheight == p->height &&
        p->requested_swapinterval == p->swapinterval && !p->lost_device)
        return;

    d3d_size_dependent_destroy(ctx);

    D3DPRESENT_PARAMETERS pparams;
    fill_presentparams(ctx, &pparams);

    hr = IDirect3DDevice9Ex_ResetEx(p->device, &pparams, ((void*)0));
    if (FAILED(hr)) {
        p->lost_device = 1;
        MP_ERR(ctx->vo, "Couldn't reset device: %s\n", mp_HRESULT_to_str(hr));
        return;
    }

    if (d3d_size_dependent_create(ctx) < 0) {
        p->lost_device = 1;
        MP_ERR(ctx->vo, "Couldn't recreate Direct3D objects after reset\n");
        return;
    }

    MP_VERBOSE(ctx->vo, "Direct3D device reset\n");
    p->width = ctx->vo->dwidth;
    p->height = ctx->vo->dheight;
    p->swapinterval = p->requested_swapinterval;
    p->lost_device = 0;
}
