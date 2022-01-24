#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {TYPE_2__* vo; struct priv* priv; } ;
struct priv {scalar_t__ XGetSyncValues; } ;
struct TYPE_4__ {TYPE_1__* x11; } ;
struct TYPE_3__ {int /*<<< orphan*/  window; int /*<<< orphan*/  display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*) ; 

__attribute__((used)) static void FUNC2(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    FUNC0(ctx->vo->x11->display, ctx->vo->x11->window);

    if (p->XGetSyncValues)
        FUNC1(ctx);
}