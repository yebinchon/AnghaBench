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
struct vo_frame {int dummy; } ;
struct vo {struct gpu_priv* priv; } ;
struct ra_swapchain {TYPE_2__* fns; } ;
struct ra_fbo {int dummy; } ;
struct gpu_priv {int /*<<< orphan*/  renderer; TYPE_1__* ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* submit_frame ) (struct ra_swapchain*,struct vo_frame*) ;int /*<<< orphan*/  (* start_frame ) (struct ra_swapchain*,struct ra_fbo*) ;} ;
struct TYPE_3__ {struct ra_swapchain* swapchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  RENDER_FRAME_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct vo_frame*,struct ra_fbo,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_swapchain*,struct ra_fbo*) ; 
 int /*<<< orphan*/  FUNC3 (struct ra_swapchain*,struct vo_frame*) ; 

__attribute__((used)) static void FUNC4(struct vo *vo, struct vo_frame *frame)
{
    struct gpu_priv *p = vo->priv;
    struct ra_swapchain *sw = p->ctx->swapchain;

    struct ra_fbo fbo;
    if (!sw->fns->start_frame(sw, &fbo))
        return;

    FUNC1(p->renderer, frame, fbo, RENDER_FRAME_DEF);
    if (!sw->fns->submit_frame(sw, frame)) {
        FUNC0(vo, "Failed presenting frame!\n");
        return;
    }
}