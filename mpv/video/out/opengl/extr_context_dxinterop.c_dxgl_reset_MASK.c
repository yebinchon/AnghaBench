#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {TYPE_1__* vo; struct priv* priv; } ;
struct priv {scalar_t__ width; scalar_t__ height; scalar_t__ requested_swapinterval; scalar_t__ swapinterval; int lost_device; int /*<<< orphan*/  device; } ;
struct TYPE_3__ {scalar_t__ dwidth; scalar_t__ dheight; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DPRESENT_PARAMETERS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ra_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    HRESULT hr;

    // Check if the device actually needs to be reset
    if (ctx->vo->dwidth == p->width && ctx->vo->dheight == p->height &&
        p->requested_swapinterval == p->swapinterval && !p->lost_device)
        return;

    FUNC5(ctx);

    D3DPRESENT_PARAMETERS pparams;
    FUNC6(ctx, &pparams);

    hr = FUNC1(p->device, &pparams, NULL);
    if (FUNC0(hr)) {
        p->lost_device = true;
        FUNC2(ctx->vo, "Couldn't reset device: %s\n", FUNC7(hr));
        return;
    }

    if (FUNC4(ctx) < 0) {
        p->lost_device = true;
        FUNC2(ctx->vo, "Couldn't recreate Direct3D objects after reset\n");
        return;
    }

    FUNC3(ctx->vo, "Direct3D device reset\n");
    p->width = ctx->vo->dwidth;
    p->height = ctx->vo->dheight;
    p->swapinterval = p->requested_swapinterval;
    p->lost_device = false;
}