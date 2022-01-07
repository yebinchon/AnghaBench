
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {int dummy; } ;
struct MPContext {int mconfig; TYPE_2__* opts; struct vo* video_out; } ;
struct TYPE_4__ {TYPE_1__* vo; } ;
struct TYPE_3__ {int fullscreen; } ;


 int MP_EVENT_WIN_RESIZE ;
 int MP_EVENT_WIN_STATE ;
 int VOCTRL_GET_FULLSCREEN ;
 int VO_EVENTS_USER ;
 int VO_EVENT_FULLSCREEN_STATE ;
 int VO_EVENT_RESIZE ;
 int VO_EVENT_WIN_STATE ;
 int bstr0 (char*) ;
 int m_config_get_co (int ,int ) ;
 int m_config_set_option_raw_direct (int ,int ,int*,int ) ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int vo_control (struct vo*,int ,int*) ;
 int vo_query_and_reset_events (struct vo*,int ) ;

__attribute__((used)) static void handle_vo_events(struct MPContext *mpctx)
{
    struct vo *vo = mpctx->video_out;
    int events = vo ? vo_query_and_reset_events(vo, VO_EVENTS_USER) : 0;
    if (events & VO_EVENT_RESIZE)
        mp_notify(mpctx, MP_EVENT_WIN_RESIZE, ((void*)0));
    if (events & VO_EVENT_WIN_STATE)
        mp_notify(mpctx, MP_EVENT_WIN_STATE, ((void*)0));
    if (events & VO_EVENT_FULLSCREEN_STATE) {


        int fs = mpctx->opts->vo->fullscreen;
        vo_control(vo, VOCTRL_GET_FULLSCREEN, &fs);
        m_config_set_option_raw_direct(mpctx->mconfig,
            m_config_get_co(mpctx->mconfig, bstr0("fullscreen")), &fs, 0);
    }
}
