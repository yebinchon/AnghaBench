
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {scalar_t__ step_sec; } ;
struct MPContext {scalar_t__ video_status; scalar_t__ max_frames; scalar_t__ step_frames; int paused; scalar_t__ stop_play; int restart_complete; struct MPOpts* opts; } ;


 scalar_t__ AT_END_OF_FILE ;
 int MPSEEK_DEFAULT ;
 int MPSEEK_RELATIVE ;
 int OSD_FFW ;
 scalar_t__ STATUS_EOF ;
 int queue_seek (struct MPContext*,int ,scalar_t__,int ,int ) ;
 int set_osd_function (struct MPContext*,int ) ;
 int set_pause_state (struct MPContext*,int) ;

__attribute__((used)) static void handle_sstep(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    if (mpctx->stop_play || !mpctx->restart_complete)
        return;

    if (opts->step_sec > 0 && !mpctx->paused) {
        set_osd_function(mpctx, OSD_FFW);
        queue_seek(mpctx, MPSEEK_RELATIVE, opts->step_sec, MPSEEK_DEFAULT, 0);
    }

    if (mpctx->video_status >= STATUS_EOF) {
        if (mpctx->max_frames >= 0 && !mpctx->stop_play)
            mpctx->stop_play = AT_END_OF_FILE;
        if (mpctx->step_frames > 0 && !mpctx->paused)
            set_pause_state(mpctx, 1);
    }
}
