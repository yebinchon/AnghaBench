
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_frame {int dummy; } ;
struct MPContext {int num_past_frames; int display_sync_active; double speed_factor_a; double speed_factor_v; int time_frame; int video_speed; TYPE_1__* past_frames; } ;
struct TYPE_2__ {scalar_t__ num_vsyncs; } ;


 int MP_VERBOSE (struct MPContext*,char*,char*) ;
 int handle_display_sync_frame (struct MPContext*,struct vo_frame*) ;
 int update_av_diff (struct MPContext*,int) ;
 int update_playback_speed (struct MPContext*) ;

__attribute__((used)) static void schedule_frame(struct MPContext *mpctx, struct vo_frame *frame)
{
    handle_display_sync_frame(mpctx, frame);

    if (mpctx->num_past_frames > 1 &&
        ((mpctx->past_frames[1].num_vsyncs >= 0) != mpctx->display_sync_active))
    {
        MP_VERBOSE(mpctx, "Video sync mode %s.\n",
                   mpctx->display_sync_active ? "enabled" : "disabled");
    }

    if (!mpctx->display_sync_active) {
        mpctx->speed_factor_a = 1.0;
        mpctx->speed_factor_v = 1.0;
        update_playback_speed(mpctx);

        update_av_diff(mpctx, mpctx->time_frame > 0 ?
            mpctx->time_frame * mpctx->video_speed : 0);
    }
}
