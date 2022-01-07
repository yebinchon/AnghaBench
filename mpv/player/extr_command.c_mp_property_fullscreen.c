
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_7__ {int mouse_event_ts; TYPE_1__* opts; } ;
struct TYPE_6__ {int fullscreen; } ;
struct TYPE_5__ {TYPE_2__* vo; } ;
typedef TYPE_3__ MPContext ;


 int VOCTRL_FULLSCREEN ;
 int mp_property_vo_flag (struct m_property*,int,void*,int ,int*,TYPE_3__*) ;

__attribute__((used)) static int mp_property_fullscreen(void *ctx, struct m_property *prop,
                                  int action, void *arg)
{
    MPContext *mpctx = ctx;
    int oldval = mpctx->opts->vo->fullscreen;
    int r = mp_property_vo_flag(prop, action, arg, VOCTRL_FULLSCREEN,
                                &mpctx->opts->vo->fullscreen, mpctx);
    if (oldval && oldval != mpctx->opts->vo->fullscreen)
        mpctx->mouse_event_ts--;
    return r;
}
