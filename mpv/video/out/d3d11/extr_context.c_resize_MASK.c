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
struct ra_ctx {TYPE_1__* vo; int /*<<< orphan*/  ra; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  backbuffer; int /*<<< orphan*/  swapchain; } ;
struct TYPE_2__ {int /*<<< orphan*/  dheight; int /*<<< orphan*/  dwidth; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DXGI_FORMAT_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_ctx*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    HRESULT hr;

    FUNC5(ctx->ra, &p->backbuffer);

    hr = FUNC1(p->swapchain, 0, ctx->vo->dwidth,
        ctx->vo->dheight, DXGI_FORMAT_UNKNOWN, 0);
    if (FUNC0(hr)) {
        FUNC2(ctx, "Couldn't resize swapchain: %s\n", FUNC4(hr));
        return false;
    }

    p->backbuffer = FUNC3(ctx);

    return true;
}