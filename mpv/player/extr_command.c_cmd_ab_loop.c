
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd_ctx {int on_osd; scalar_t__ msg_osd; struct MPContext* mpctx; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {int osd_duration; double* ab_loop; } ;


 double MP_NOPTS_VALUE ;
 int M_PROPERTY_SET ;
 int OSD_LEVEL_INVISIBLE ;
 double get_current_time (struct MPContext*) ;
 int mp_property_do (char*,int ,double*,struct MPContext*) ;
 int set_osd_msg (struct MPContext*,int,int,char*) ;
 int show_property_osd (struct MPContext*,char*,int ) ;

__attribute__((used)) static void cmd_ab_loop(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int osd_duration = mpctx->opts->osd_duration;
    int osdl = cmd->msg_osd ? 1 : OSD_LEVEL_INVISIBLE;

    double now = get_current_time(mpctx);
    if (mpctx->opts->ab_loop[0] == MP_NOPTS_VALUE) {
        mp_property_do("ab-loop-a", M_PROPERTY_SET, &now, mpctx);
        show_property_osd(mpctx, "ab-loop-a", cmd->on_osd);
    } else if (mpctx->opts->ab_loop[1] == MP_NOPTS_VALUE) {
        mp_property_do("ab-loop-b", M_PROPERTY_SET, &now, mpctx);
        show_property_osd(mpctx, "ab-loop-b", cmd->on_osd);
    } else {
        now = MP_NOPTS_VALUE;
        mp_property_do("ab-loop-a", M_PROPERTY_SET, &now, mpctx);
        mp_property_do("ab-loop-b", M_PROPERTY_SET, &now, mpctx);
        set_osd_msg(mpctx, osdl, osd_duration, "Clear A-B loop");
    }
}
