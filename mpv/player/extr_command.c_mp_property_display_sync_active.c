
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_2__ {int display_sync_active; } ;
typedef TYPE_1__ MPContext ;


 int m_property_flag_ro (int,void*,int ) ;

__attribute__((used)) static int mp_property_display_sync_active(void *ctx, struct m_property *prop,
                                           int action, void *arg)
{
    MPContext *mpctx = ctx;
    return m_property_flag_ro(action, arg, mpctx->display_sync_active);
}
