
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int * video_out; } ;


 int MPV_EVENT_VIDEO_RECONFIG ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int uninit_video_chain (struct MPContext*) ;
 int vo_destroy (int *) ;

void uninit_video_out(struct MPContext *mpctx)
{
    uninit_video_chain(mpctx);
    if (mpctx->video_out) {
        vo_destroy(mpctx->video_out);
        mp_notify(mpctx, MPV_EVENT_VIDEO_RECONFIG, ((void*)0));
    }
    mpctx->video_out = ((void*)0);
}
