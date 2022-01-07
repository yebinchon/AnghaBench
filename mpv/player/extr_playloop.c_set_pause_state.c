
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {int pause; } ;
struct MPContext {int paused; int osd_force_update; int time_frame; scalar_t__ step_frames; scalar_t__ osd_function; scalar_t__ video_out; scalar_t__ ao; scalar_t__ ao_chain; scalar_t__ paused_for_cache; struct MPOpts* opts; } ;


 int MPV_EVENT_PAUSE ;
 int MPV_EVENT_UNPAUSE ;
 int ao_pause (scalar_t__) ;
 int ao_resume (scalar_t__) ;
 scalar_t__ get_relative_time (struct MPContext*) ;
 int mp_notify (struct MPContext*,int ,int ) ;
 int mp_wakeup_core (struct MPContext*) ;
 int update_core_idle_state (struct MPContext*) ;
 int vo_set_paused (scalar_t__,int) ;

void set_pause_state(struct MPContext *mpctx, bool user_pause)
{
    struct MPOpts *opts = mpctx->opts;
    bool send_update = 0;

    if (opts->pause != user_pause)
        send_update = 1;
    opts->pause = user_pause;

    bool internal_paused = opts->pause || mpctx->paused_for_cache;
    if (internal_paused != mpctx->paused) {
        mpctx->paused = internal_paused;
        send_update = 1;

        if (mpctx->ao && mpctx->ao_chain) {
            if (internal_paused) {
                ao_pause(mpctx->ao);
            } else {
                ao_resume(mpctx->ao);
            }
        }

        if (mpctx->video_out)
            vo_set_paused(mpctx->video_out, internal_paused);

        mpctx->osd_function = 0;
        mpctx->osd_force_update = 1;

        mp_wakeup_core(mpctx);

        if (internal_paused) {
            mpctx->step_frames = 0;
            mpctx->time_frame -= get_relative_time(mpctx);
        } else {
            (void)get_relative_time(mpctx);
        }
    }

    update_core_idle_state(mpctx);

    if (send_update)
        mp_notify(mpctx, opts->pause ? MPV_EVENT_PAUSE : MPV_EVENT_UNPAUSE, 0);
}
