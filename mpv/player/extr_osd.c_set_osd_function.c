
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {double osd_duration; } ;
struct MPContext {int osd_function; int osd_force_update; scalar_t__ osd_function_visible; struct MPOpts* opts; } ;


 scalar_t__ mp_time_sec () ;
 int mp_wakeup_core (struct MPContext*) ;

void set_osd_function(struct MPContext *mpctx, int osd_function)
{
    struct MPOpts *opts = mpctx->opts;

    mpctx->osd_function = osd_function;
    mpctx->osd_function_visible = mp_time_sec() + opts->osd_duration / 1000.0;
    mpctx->osd_force_update = 1;
    mp_wakeup_core(mpctx);
}
