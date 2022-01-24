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
struct vdp_functions {int /*<<< orphan*/  (* device_destroy ) (scalar_t__) ;int /*<<< orphan*/  (* output_surface_destroy ) (scalar_t__) ;int /*<<< orphan*/  (* video_surface_destroy ) (scalar_t__) ;} ;
struct mp_vdpau_ctx {scalar_t__ preemption_obj; scalar_t__ vdp_device; int /*<<< orphan*/  preempt_lock; int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  x11; scalar_t__ close_display; TYPE_1__* video_surfaces; struct vdp_functions vdp; } ;
struct AVHWDeviceContext {struct mp_vdpau_ctx* user_opaque; } ;
typedef  int /*<<< orphan*/  VdpStatus ;
struct TYPE_2__ {scalar_t__ surface; scalar_t__ osurface; int /*<<< orphan*/  in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_vdpau_ctx*,char*) ; 
 int MAX_VIDEO_SURFACES ; 
 scalar_t__ VDP_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_vdpau_ctx*) ; 

__attribute__((used)) static void FUNC9(struct AVHWDeviceContext *hwctx)
{
    struct mp_vdpau_ctx *ctx = hwctx->user_opaque;

    struct vdp_functions *vdp = &ctx->vdp;
    VdpStatus vdp_st;

    for (int i = 0; i < MAX_VIDEO_SURFACES; i++) {
        // can't hold references past context lifetime
        FUNC2(!ctx->video_surfaces[i].in_use);
        if (ctx->video_surfaces[i].surface != VDP_INVALID_HANDLE) {
            vdp_st = vdp->video_surface_destroy(ctx->video_surfaces[i].surface);
            FUNC0(ctx, "Error when calling vdp_video_surface_destroy");
        }
        if (ctx->video_surfaces[i].osurface != VDP_INVALID_HANDLE) {
            vdp_st = vdp->output_surface_destroy(ctx->video_surfaces[i].osurface);
            FUNC0(ctx, "Error when calling vdp_output_surface_destroy");
        }
    }

    if (ctx->preemption_obj != VDP_INVALID_HANDLE) {
        vdp_st = vdp->output_surface_destroy(ctx->preemption_obj);
        FUNC0(ctx, "Error when calling vdp_output_surface_destroy");
    }

    if (vdp->device_destroy && ctx->vdp_device != VDP_INVALID_HANDLE) {
        vdp_st = vdp->device_destroy(ctx->vdp_device);
        FUNC0(ctx, "Error when calling vdp_device_destroy");
    }

    if (ctx->close_display)
        FUNC1(ctx->x11);

    FUNC3(&ctx->pool_lock);
    FUNC3(&ctx->preempt_lock);
    FUNC8(ctx);
}