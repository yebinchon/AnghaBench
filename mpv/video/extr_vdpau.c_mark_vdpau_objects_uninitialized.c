
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_vdpau_ctx {void* preemption_obj; void* vdp_device; TYPE_1__* video_surfaces; } ;
struct TYPE_2__ {int allocated; void* osurface; void* surface; } ;


 int MAX_VIDEO_SURFACES ;
 void* VDP_INVALID_HANDLE ;

__attribute__((used)) static void mark_vdpau_objects_uninitialized(struct mp_vdpau_ctx *ctx)
{
    for (int i = 0; i < MAX_VIDEO_SURFACES; i++) {
        ctx->video_surfaces[i].surface = VDP_INVALID_HANDLE;
        ctx->video_surfaces[i].osurface = VDP_INVALID_HANDLE;
        ctx->video_surfaces[i].allocated = 0;
    }
    ctx->vdp_device = VDP_INVALID_HANDLE;
    ctx->preemption_obj = VDP_INVALID_HANDLE;
}
