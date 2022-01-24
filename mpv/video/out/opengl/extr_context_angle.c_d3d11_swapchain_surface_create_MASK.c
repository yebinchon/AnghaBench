#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo {int /*<<< orphan*/  log; TYPE_1__* opts; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int flipped; int /*<<< orphan*/  dxgi_swapchain; int /*<<< orphan*/  d3d11_device; int /*<<< orphan*/  sc_height; int /*<<< orphan*/  sc_width; struct angle_opts* opts; } ;
struct d3d11_swapchain_opts {int usage; int /*<<< orphan*/  length; int /*<<< orphan*/  flip; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  window; } ;
struct angle_opts {int /*<<< orphan*/  flip; } ;
struct TYPE_2__ {int /*<<< orphan*/  swapchain_depth; } ;

/* Variables and functions */
 int DXGI_USAGE_RENDER_TARGET_OUTPUT ; 
 int DXGI_USAGE_SHADER_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3d11_swapchain_opts*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 

__attribute__((used)) static bool FUNC5(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;
    struct angle_opts *o = p->opts;

    if (!p->d3d11_device)
        goto fail;

    FUNC3(ctx);
    struct d3d11_swapchain_opts swapchain_opts = {
        .window = FUNC4(vo),
        .width = p->sc_width,
        .height = p->sc_height,
        .flip = o->flip,
        // Add one frame for the backbuffer and one frame of "slack" to reduce
        // contention with the window manager when acquiring the backbuffer
        .length = ctx->vo->opts->swapchain_depth + 2,
        .usage = DXGI_USAGE_RENDER_TARGET_OUTPUT | DXGI_USAGE_SHADER_INPUT,
    };
    if (!FUNC2(p->d3d11_device, vo->log, &swapchain_opts,
                                   &p->dxgi_swapchain))
        goto fail;
    if (!FUNC0(ctx))
        goto fail;

    p->flipped = true;
    return true;

fail:
    FUNC1(ctx);
    return false;
}