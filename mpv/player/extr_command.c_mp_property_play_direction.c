
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_5__ {int play_dir; } ;
typedef TYPE_1__ MPContext ;


 int MPSEEK_ABSOLUTE ;
 int MPSEEK_EXACT ;
 int M_PROPERTY_SET ;
 int get_current_time (TYPE_1__*) ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;
 int queue_seek (TYPE_1__*,int ,int ,int ,int ) ;

__attribute__((used)) static int mp_property_play_direction(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (action == M_PROPERTY_SET) {
        if (mpctx->play_dir != *(int *)arg) {
            queue_seek(mpctx, MPSEEK_ABSOLUTE, get_current_time(mpctx),
                       MPSEEK_EXACT, 0);
        }
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
