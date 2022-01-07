
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_chain {int dummy; } ;
struct MPContext {struct vo_chain* vo_chain; } ;


 int MPV_EVENT_VIDEO_RECONFIG ;
 int mp_force_video_refresh (struct MPContext*) ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int recreate_video_filters (struct MPContext*) ;

int reinit_video_filters(struct MPContext *mpctx)
{
    struct vo_chain *vo_c = mpctx->vo_chain;

    if (!vo_c)
        return 0;

    if (!recreate_video_filters(mpctx))
        return -1;

    mp_force_video_refresh(mpctx);

    mp_notify(mpctx, MPV_EVENT_VIDEO_RECONFIG, ((void*)0));

    return 0;
}
