
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int log; TYPE_1__* opts; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int flipped; int dxgi_swapchain; int d3d11_device; int sc_height; int sc_width; struct angle_opts* opts; } ;
struct d3d11_swapchain_opts {int usage; int length; int flip; int height; int width; int window; } ;
struct angle_opts {int flip; } ;
struct TYPE_2__ {int swapchain_depth; } ;


 int DXGI_USAGE_RENDER_TARGET_OUTPUT ;
 int DXGI_USAGE_SHADER_INPUT ;
 int d3d11_backbuffer_get (struct ra_ctx*) ;
 int d3d11_swapchain_surface_destroy (struct ra_ctx*) ;
 int mp_d3d11_create_swapchain (int ,int ,struct d3d11_swapchain_opts*,int *) ;
 int update_sizes (struct ra_ctx*) ;
 int vo_w32_hwnd (struct vo*) ;

__attribute__((used)) static bool d3d11_swapchain_surface_create(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;
    struct angle_opts *o = p->opts;

    if (!p->d3d11_device)
        goto fail;

    update_sizes(ctx);
    struct d3d11_swapchain_opts swapchain_opts = {
        .window = vo_w32_hwnd(vo),
        .width = p->sc_width,
        .height = p->sc_height,
        .flip = o->flip,


        .length = ctx->vo->opts->swapchain_depth + 2,
        .usage = DXGI_USAGE_RENDER_TARGET_OUTPUT | DXGI_USAGE_SHADER_INPUT,
    };
    if (!mp_d3d11_create_swapchain(p->d3d11_device, vo->log, &swapchain_opts,
                                   &p->dxgi_swapchain))
        goto fail;
    if (!d3d11_backbuffer_get(ctx))
        goto fail;

    p->flipped = 1;
    return 1;

fail:
    d3d11_swapchain_surface_destroy(ctx);
    return 0;
}
