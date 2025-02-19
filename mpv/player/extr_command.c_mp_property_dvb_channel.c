
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_3__ {scalar_t__ stop_play; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_OK ;
 scalar_t__ PT_CURRENT_ENTRY ;
 scalar_t__ is_property_set (int,void*) ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;

__attribute__((used)) static int mp_property_dvb_channel(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    int r = mp_property_generic_option(mpctx, prop, action, arg);
    if (r == M_PROPERTY_OK && is_property_set(action, arg)) {
        if (!mpctx->stop_play) {
            mpctx->stop_play = PT_CURRENT_ENTRY;
        }
    }
    return r;
}
