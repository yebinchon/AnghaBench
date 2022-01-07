
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct MPContext {double sleeptime; scalar_t__ video_status; double start_timestamp; TYPE_2__* video_out; int osd; TYPE_1__* vo_chain; int paused; } ;
struct TYPE_5__ {int config_ok; } ;
struct TYPE_4__ {int is_coverart; } ;


 scalar_t__ STATUS_PLAYING ;
 int mp_set_timeout (struct MPContext*,double) ;
 double mp_time_sec () ;
 scalar_t__ osd_query_and_reset_want_redraw (int ) ;
 int vo_redraw (TYPE_2__*) ;
 scalar_t__ vo_want_redraw (TYPE_2__*) ;

__attribute__((used)) static void handle_osd_redraw(struct MPContext *mpctx)
{
    if (!mpctx->video_out || !mpctx->video_out->config_ok)
        return;


    if (!mpctx->paused) {
        if (mpctx->sleeptime < 0.1 && mpctx->video_status == STATUS_PLAYING)
            return;
    }

    bool use_video = mpctx->vo_chain && !mpctx->vo_chain->is_coverart;
    if (use_video && mp_time_sec() - mpctx->start_timestamp < 0.1) {
        mp_set_timeout(mpctx, 0.1);
        return;
    }
    bool want_redraw = osd_query_and_reset_want_redraw(mpctx->osd) ||
                       vo_want_redraw(mpctx->video_out);
    if (!want_redraw)
        return;
    vo_redraw(mpctx->video_out);
}
