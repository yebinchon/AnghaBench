
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int video_out; TYPE_1__* opts; int playback_active; } ;
struct TYPE_2__ {int stop_screensaver; } ;


 int VOCTRL_KILL_SCREENSAVER ;
 int VOCTRL_RESTORE_SCREENSAVER ;
 int vo_control_async (int ,int ,int *) ;

void update_screensaver_state(struct MPContext *mpctx)
{
    if (!mpctx->video_out)
        return;

    bool saver_state = !mpctx->playback_active || !mpctx->opts->stop_screensaver;
    vo_control_async(mpctx->video_out, saver_state ? VOCTRL_RESTORE_SCREENSAVER
                                                   : VOCTRL_KILL_SCREENSAVER, ((void*)0));
}
