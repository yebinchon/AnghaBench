
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_wayland_state {int last_queue_display_time; int last_skipped_vsyncs; int vsync_duration; int hidden; scalar_t__ presentation; } ;
struct vo_vsync_info {int last_queue_display_time; int skipped_vsyncs; int vsync_duration; } ;
struct ra_ctx {TYPE_1__* vo; } ;
struct TYPE_2__ {struct vo_wayland_state* wl; } ;



__attribute__((used)) static void wayland_vk_get_vsync(struct ra_ctx *ctx, struct vo_vsync_info *info)
{
    struct vo_wayland_state *wl = ctx->vo->wl;
    if (wl->presentation && !wl->hidden) {
        info->vsync_duration = wl->vsync_duration;
        info->skipped_vsyncs = wl->last_skipped_vsyncs;
        info->last_queue_display_time = wl->last_queue_display_time;
    }
}
