
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int stream; } ;
struct MPContext {struct track*** current_track; } ;


 size_t STREAM_VIDEO ;
 int error_on_track (struct MPContext*,struct track*) ;
 int reinit_video_chain_src (struct MPContext*,struct track*) ;

void reinit_video_chain(struct MPContext *mpctx)
{
    struct track *track = mpctx->current_track[0][STREAM_VIDEO];
    if (!track || !track->stream) {
        error_on_track(mpctx, track);
        return;
    }
    reinit_video_chain_src(mpctx, track);
}
