
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_4__ {scalar_t__ video_out; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_SET ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;
 int vo_control (scalar_t__,int,int ) ;

__attribute__((used)) static int mp_property_vo_flag(struct m_property *prop, int action, void *arg,
                               int vo_ctrl, int *vo_var, MPContext *mpctx)
{
    int old = *vo_var;
    int res = mp_property_generic_option(mpctx, prop, action, arg);
    if (action == M_PROPERTY_SET && old != *vo_var) {
        if (mpctx->video_out)
            vo_control(mpctx->video_out, vo_ctrl, 0);
    }
    return res;
}
