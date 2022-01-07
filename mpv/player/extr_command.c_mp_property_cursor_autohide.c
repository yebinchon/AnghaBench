
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct MPOpts {int cursor_autohide_delay; } ;
struct TYPE_3__ {scalar_t__ mouse_timer; struct MPOpts* opts; } ;
typedef TYPE_1__ MPContext ;


 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;

__attribute__((used)) static int mp_property_cursor_autohide(void *ctx, struct m_property *prop,
                                       int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct MPOpts *opts = mpctx->opts;
    int old_value = opts->cursor_autohide_delay;
    int r = mp_property_generic_option(mpctx, prop, action, arg);
    if (opts->cursor_autohide_delay != old_value)
        mpctx->mouse_timer = 0;
    return r;
}
