
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int video_status; int * vo_chain; } ;


 int MPV_EVENT_VIDEO_RECONFIG ;
 int STATUS_EOF ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int reset_video_state (struct MPContext*) ;
 int vo_chain_uninit (int *) ;

void uninit_video_chain(struct MPContext *mpctx)
{
    if (mpctx->vo_chain) {
        reset_video_state(mpctx);
        vo_chain_uninit(mpctx->vo_chain);
        mpctx->vo_chain = ((void*)0);

        mpctx->video_status = STATUS_EOF;

        mp_notify(mpctx, MPV_EVENT_VIDEO_RECONFIG, ((void*)0));
    }
}
