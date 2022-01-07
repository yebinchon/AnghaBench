
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_7__ {TYPE_2__* opts; } ;
struct TYPE_6__ {TYPE_1__* vo; } ;
struct TYPE_5__ {int all_workspaces; } ;
typedef TYPE_3__ MPContext ;


 int VOCTRL_ALL_WORKSPACES ;
 int mp_property_vo_flag (struct m_property*,int,void*,int ,int *,TYPE_3__*) ;

__attribute__((used)) static int mp_property_all_workspaces(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    MPContext *mpctx = ctx;
    return mp_property_vo_flag(prop, action, arg, VOCTRL_ALL_WORKSPACES,
                               &mpctx->opts->vo->all_workspaces, mpctx);
}
