
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {scalar_t__ video_status; scalar_t__ audio_status; int playback_pts; int video_pts; TYPE_1__* vo_chain; } ;
struct TYPE_2__ {int is_sparse; int is_coverart; } ;


 scalar_t__ STATUS_EOF ;
 scalar_t__ STATUS_PLAYING ;
 int playing_audio_pts (struct MPContext*) ;

__attribute__((used)) static void handle_playback_time(struct MPContext *mpctx)
{
    if (mpctx->vo_chain &&
        !mpctx->vo_chain->is_coverart &&
        !mpctx->vo_chain->is_sparse &&
        mpctx->video_status >= STATUS_PLAYING &&
        mpctx->video_status < STATUS_EOF)
    {
        mpctx->playback_pts = mpctx->video_pts;
    } else if (mpctx->audio_status >= STATUS_PLAYING &&
               mpctx->audio_status < STATUS_EOF)
    {
        mpctx->playback_pts = playing_audio_pts(mpctx);
    }
}
