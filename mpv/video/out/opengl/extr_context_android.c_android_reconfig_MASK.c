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
struct ra_ctx {int /*<<< orphan*/  swapchain; TYPE_1__* vo; } ;
struct TYPE_2__ {int dwidth; int dheight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,int*) ; 

__attribute__((used)) static bool FUNC2(struct ra_ctx *ctx)
{
    int w, h;
    if (!FUNC1(ctx->vo, &w, &h))
        return false;

    ctx->vo->dwidth = w;
    ctx->vo->dheight = h;
    FUNC0(ctx->swapchain, w, h, 0);
    return true;
}