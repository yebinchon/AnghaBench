#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ra_swapchain {struct ra_ctx* ctx; } ;
struct ra_ctx {TYPE_5__* vo; struct priv* priv; } ;
struct TYPE_8__ {int num_bos; TYPE_4__** bo_queue; int /*<<< orphan*/  surface; } ;
struct TYPE_6__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  display; } ;
struct priv {TYPE_3__ gbm; scalar_t__ waiting_for_flip; TYPE_1__ egl; int /*<<< orphan*/  active; scalar_t__ still; scalar_t__ paused; } ;
struct gbm_bo {int dummy; } ;
struct TYPE_10__ {TYPE_2__* opts; } ;
struct TYPE_9__ {int /*<<< orphan*/  bo; } ;
struct TYPE_7__ {int swapchain_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_ctx*,struct gbm_bo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct gbm_bo* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ra_ctx*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ra_ctx*) ; 

__attribute__((used)) static void FUNC10(struct ra_swapchain *sw)
{
    struct ra_ctx *ctx = sw->ctx;
    struct priv *p = ctx->priv;
    const bool drain = p->paused || p->still;  // True when we need to drain the swapchain

    if (!p->active)
        return;

    FUNC8(ctx);

    FUNC1(p->egl.display, p->egl.surface);

    struct gbm_bo *new_bo = FUNC4(p->gbm.surface);
    if (!new_bo) {
        FUNC0(ctx->vo, "Couldn't lock front buffer\n");
        return;
    }
    FUNC2(ctx, new_bo);
    FUNC5(ctx);

    while (drain || p->gbm.num_bos > ctx->vo->opts->swapchain_depth ||
           !FUNC3(p->gbm.surface)) {
        if (p->waiting_for_flip) {
            FUNC9(ctx);
            FUNC7(ctx);
        }
        if (p->gbm.num_bos <= 1)
            break;
        if (!p->gbm.bo_queue[1] || !p->gbm.bo_queue[1]->bo) {
            FUNC0(ctx->vo, "Hole in swapchain?\n");
            FUNC7(ctx);
            continue;
        }
        FUNC6(ctx, p->gbm.bo_queue[1]);
    }
}