
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct MPContext {scalar_t__ stop_play; TYPE_2__* playlist; TYPE_1__* opts; } ;
struct TYPE_4__ {int current; } ;
struct TYPE_3__ {scalar_t__ player_idle_mode; } ;


 int MPV_EVENT_IDLE ;
 scalar_t__ PT_QUIT ;
 int handle_force_window (struct MPContext*,int) ;
 int mp_idle (struct MPContext*) ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int mp_wakeup_core (struct MPContext*) ;
 int uninit_audio_out (struct MPContext*) ;

void idle_loop(struct MPContext *mpctx)
{

    bool need_reinit = 1;
    while (mpctx->opts->player_idle_mode && !mpctx->playlist->current
           && mpctx->stop_play != PT_QUIT)
    {
        if (need_reinit) {
            uninit_audio_out(mpctx);
            handle_force_window(mpctx, 1);
            mp_wakeup_core(mpctx);
            mp_notify(mpctx, MPV_EVENT_IDLE, ((void*)0));
            need_reinit = 0;
        }
        mp_idle(mpctx);
    }
}
