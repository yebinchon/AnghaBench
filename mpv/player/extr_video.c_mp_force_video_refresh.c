
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_chain {int dummy; } ;
struct MPOpts {scalar_t__ pause; } ;
struct MPContext {double time_frame; scalar_t__ video_status; struct vo_chain* vo_chain; struct MPOpts* opts; } ;


 int MPSEEK_VERY_EXACT ;
 scalar_t__ STATUS_EOF ;
 int issue_refresh_seek (struct MPContext*,int ) ;

void mp_force_video_refresh(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    struct vo_chain *vo_c = mpctx->vo_chain;

    if (!vo_c)
        return;


    if (opts->pause || mpctx->time_frame >= 0.5 ||
        mpctx->video_status == STATUS_EOF)
    {
        issue_refresh_seek(mpctx, MPSEEK_VERY_EXACT);
    }
}
