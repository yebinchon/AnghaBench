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
struct ra_ctx {struct priv* priv; } ;
struct priv {scalar_t__ dxgi_swapchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*) ; 

__attribute__((used)) static void FUNC2(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    if (p->dxgi_swapchain)
        FUNC0(ctx);
    else
        FUNC1(ctx);
}