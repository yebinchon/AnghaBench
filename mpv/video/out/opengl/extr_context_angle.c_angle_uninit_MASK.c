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
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct priv {scalar_t__ d3d11_device; scalar_t__ dxgi_swapchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    FUNC6(ctx);

    FUNC0(FALSE);

    // Uninit the EGL surface implementation that is being used. Note: This may
    // result in the *_destroy function being called twice since it is also
    // called when the surface create function fails. This is fine because the
    // *_destroy functions are idempotent.
    if (p->dxgi_swapchain)
        FUNC3(ctx);
    else
        FUNC5(ctx);

    FUNC1(ctx);

    // Uninit the EGL device implementation that is being used
    if (p->d3d11_device)
        FUNC2(ctx);
    else
        FUNC4(ctx);

    FUNC7(ctx->vo);
}