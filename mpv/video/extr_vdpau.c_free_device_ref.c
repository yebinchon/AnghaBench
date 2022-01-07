
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdp_functions {int (* device_destroy ) (scalar_t__) ;int (* output_surface_destroy ) (scalar_t__) ;int (* video_surface_destroy ) (scalar_t__) ;} ;
struct mp_vdpau_ctx {scalar_t__ preemption_obj; scalar_t__ vdp_device; int preempt_lock; int pool_lock; int x11; scalar_t__ close_display; TYPE_1__* video_surfaces; struct vdp_functions vdp; } ;
struct AVHWDeviceContext {struct mp_vdpau_ctx* user_opaque; } ;
typedef int VdpStatus ;
struct TYPE_2__ {scalar_t__ surface; scalar_t__ osurface; int in_use; } ;


 int CHECK_VDP_WARNING (struct mp_vdpau_ctx*,char*) ;
 int MAX_VIDEO_SURFACES ;
 scalar_t__ VDP_INVALID_HANDLE ;
 int XCloseDisplay (int ) ;
 int assert (int) ;
 int pthread_mutex_destroy (int *) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__) ;
 int talloc_free (struct mp_vdpau_ctx*) ;

__attribute__((used)) static void free_device_ref(struct AVHWDeviceContext *hwctx)
{
    struct mp_vdpau_ctx *ctx = hwctx->user_opaque;

    struct vdp_functions *vdp = &ctx->vdp;
    VdpStatus vdp_st;

    for (int i = 0; i < MAX_VIDEO_SURFACES; i++) {

        assert(!ctx->video_surfaces[i].in_use);
        if (ctx->video_surfaces[i].surface != VDP_INVALID_HANDLE) {
            vdp_st = vdp->video_surface_destroy(ctx->video_surfaces[i].surface);
            CHECK_VDP_WARNING(ctx, "Error when calling vdp_video_surface_destroy");
        }
        if (ctx->video_surfaces[i].osurface != VDP_INVALID_HANDLE) {
            vdp_st = vdp->output_surface_destroy(ctx->video_surfaces[i].osurface);
            CHECK_VDP_WARNING(ctx, "Error when calling vdp_output_surface_destroy");
        }
    }

    if (ctx->preemption_obj != VDP_INVALID_HANDLE) {
        vdp_st = vdp->output_surface_destroy(ctx->preemption_obj);
        CHECK_VDP_WARNING(ctx, "Error when calling vdp_output_surface_destroy");
    }

    if (vdp->device_destroy && ctx->vdp_device != VDP_INVALID_HANDLE) {
        vdp_st = vdp->device_destroy(ctx->vdp_device);
        CHECK_VDP_WARNING(ctx, "Error when calling vdp_device_destroy");
    }

    if (ctx->close_display)
        XCloseDisplay(ctx->x11);

    pthread_mutex_destroy(&ctx->pool_lock);
    pthread_mutex_destroy(&ctx->preempt_lock);
    talloc_free(ctx);
}
