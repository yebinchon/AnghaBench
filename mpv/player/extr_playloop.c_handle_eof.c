
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ audio_status; scalar_t__ video_status; scalar_t__ stop_play; scalar_t__ vo_chain; scalar_t__ ao_chain; scalar_t__ video_out; scalar_t__ paused; } ;


 scalar_t__ AT_END_OF_FILE ;
 scalar_t__ STATUS_EOF ;
 scalar_t__ vo_has_frame (scalar_t__) ;

__attribute__((used)) static void handle_eof(struct MPContext *mpctx)
{



    bool prevent_eof =
        mpctx->paused && mpctx->video_out && vo_has_frame(mpctx->video_out);




    if ((mpctx->ao_chain || mpctx->vo_chain) && !prevent_eof &&
        mpctx->audio_status == STATUS_EOF &&
        mpctx->video_status == STATUS_EOF &&
        !mpctx->stop_play)
    {
        mpctx->stop_play = AT_END_OF_FILE;
    }
}
