
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_7__ {TYPE_1__* opts; } ;
struct TYPE_6__ {double playback_speed; } ;
typedef TYPE_2__ MPContext ;


 int M_PROPERTY_OK ;


 int mp_property_generic_option (TYPE_2__*,struct m_property*,int,void*) ;
 int mp_wakeup_core (TYPE_2__*) ;
 char* talloc_asprintf (int *,char*,double) ;
 int update_playback_speed (TYPE_2__*) ;

__attribute__((used)) static int mp_property_playback_speed(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    MPContext *mpctx = ctx;
    double speed = mpctx->opts->playback_speed;
    switch (action) {
    case 128: {
        int r = mp_property_generic_option(mpctx, prop, action, arg);
        update_playback_speed(mpctx);
        mp_wakeup_core(mpctx);
        return r;
    }
    case 129:
        *(char **)arg = talloc_asprintf(((void*)0), "%.2f", speed);
        return M_PROPERTY_OK;
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
