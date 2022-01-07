
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int stream; } ;
struct MPContext {struct track*** current_track; } ;


 size_t STREAM_AUDIO ;
 int error_on_track (struct MPContext*,struct track*) ;
 int reinit_audio_chain_src (struct MPContext*,struct track*) ;
 int uninit_audio_out (struct MPContext*) ;

void reinit_audio_chain(struct MPContext *mpctx)
{
    struct track *track = ((void*)0);
    track = mpctx->current_track[0][STREAM_AUDIO];
    if (!track || !track->stream) {
        uninit_audio_out(mpctx);
        error_on_track(mpctx, track);
        return;
    }
    reinit_audio_chain_src(mpctx, track);
}
