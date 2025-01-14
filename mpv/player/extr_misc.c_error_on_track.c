
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track {scalar_t__ type; int selected; } ;
struct MPContext {scalar_t__ error_playing; scalar_t__ stop_play; scalar_t__ ao_chain; scalar_t__ vo_chain; TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ stop_playback_on_init_failure; } ;


 scalar_t__ MPV_ERROR_NOTHING_TO_PLAY ;
 int MP_INFO (struct MPContext*,char*) ;
 scalar_t__ PT_ERROR ;
 scalar_t__ STREAM_AUDIO ;
 scalar_t__ STREAM_VIDEO ;
 int mp_deselect_track (struct MPContext*,struct track*) ;
 int mp_wakeup_core (struct MPContext*) ;

void error_on_track(struct MPContext *mpctx, struct track *track)
{
    if (!track || !track->selected)
        return;
    mp_deselect_track(mpctx, track);
    if (track->type == STREAM_AUDIO)
        MP_INFO(mpctx, "Audio: no audio\n");
    if (track->type == STREAM_VIDEO)
        MP_INFO(mpctx, "Video: no video\n");
    if (mpctx->opts->stop_playback_on_init_failure ||
        !(mpctx->vo_chain || mpctx->ao_chain))
    {
        if (!mpctx->stop_play)
            mpctx->stop_play = PT_ERROR;
        if (mpctx->error_playing >= 0)
            mpctx->error_playing = MPV_ERROR_NOTHING_TO_PLAY;
    }
    mp_wakeup_core(mpctx);
}
