
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track {int dummy; } ;
struct MPContext {int error_playing; TYPE_1__* vo_chain; } ;
struct TYPE_2__ {struct track* track; } ;


 int MPV_ERROR_VO_INIT_FAILED ;
 int error_on_track (struct MPContext*,struct track*) ;
 int uninit_video_out (struct MPContext*) ;

__attribute__((used)) static void do_kill(void *ptr)
{
    struct MPContext *mpctx = ptr;

    struct track *track = mpctx->vo_chain ? mpctx->vo_chain->track : ((void*)0);
    uninit_video_out(mpctx);
    if (track) {
        mpctx->error_playing = MPV_ERROR_VO_INIT_FAILED;
        error_on_track(mpctx, track);
    }
}
