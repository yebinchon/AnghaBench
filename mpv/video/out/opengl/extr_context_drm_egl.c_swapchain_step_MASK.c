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
struct ra_ctx {struct priv* priv; } ;
struct TYPE_4__ {scalar_t__ num_bos; TYPE_1__** bo_queue; int /*<<< orphan*/  surface; } ;
struct priv {TYPE_2__ gbm; } ;
struct TYPE_3__ {scalar_t__ bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (!(p->gbm.num_bos > 0))
        return;

    if (p->gbm.bo_queue[0]->bo)
        FUNC1(p->gbm.surface, p->gbm.bo_queue[0]->bo);
    FUNC0(ctx);
}