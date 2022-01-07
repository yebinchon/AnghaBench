
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ video_status; scalar_t__ audio_status; int playback_active; scalar_t__ in_playloop; int stop_play; scalar_t__ restart_complete; int paused; } ;


 int MP_EVENT_CORE_IDLE ;
 scalar_t__ STATUS_EOF ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int update_screensaver_state (struct MPContext*) ;

void update_core_idle_state(struct MPContext *mpctx)
{
    bool eof = mpctx->video_status == STATUS_EOF &&
               mpctx->audio_status == STATUS_EOF;
    bool active = !mpctx->paused && mpctx->restart_complete &&
                  !mpctx->stop_play && mpctx->in_playloop && !eof;

    if (mpctx->playback_active != active) {
        mpctx->playback_active = active;

        update_screensaver_state(mpctx);

        mp_notify(mpctx, MP_EVENT_CORE_IDLE, ((void*)0));
    }
}
