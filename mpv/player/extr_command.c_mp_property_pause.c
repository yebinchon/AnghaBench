
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_4__ {scalar_t__ playback_initialized; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_OK ;
 int M_PROPERTY_SET ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;
 int set_pause_state (TYPE_1__*,int) ;

__attribute__((used)) static int mp_property_pause(void *ctx, struct m_property *prop,
                             int action, void *arg)
{
    MPContext *mpctx = ctx;

    if (mpctx->playback_initialized && action == M_PROPERTY_SET) {
        set_pause_state(mpctx, *(int *)arg);
        return M_PROPERTY_OK;
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
