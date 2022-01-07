
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct MPContext {int osd_show_pos; int osd_msg_next_duration; int osd_force_update; int osd_msg_visible; int osd_msg_text; TYPE_1__* opts; } ;
struct TYPE_2__ {int osd_level; } ;


 int mp_time_sec () ;
 int mp_wakeup_core (struct MPContext*) ;
 int talloc_free (int ) ;
 int talloc_vasprintf (struct MPContext*,char const*,int ) ;

__attribute__((used)) static bool set_osd_msg_va(struct MPContext *mpctx, int level, int time,
                           const char *fmt, va_list ap)
{
    if (level > mpctx->opts->osd_level)
        return 0;

    talloc_free(mpctx->osd_msg_text);
    mpctx->osd_msg_text = talloc_vasprintf(mpctx, fmt, ap);
    mpctx->osd_show_pos = 0;
    mpctx->osd_msg_next_duration = time / 1000.0;
    mpctx->osd_force_update = 1;
    mp_wakeup_core(mpctx);
    if (mpctx->osd_msg_next_duration <= 0)
        mpctx->osd_msg_visible = mp_time_sec();
    return 1;
}
