
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_osd_res {int display_par; } ;
struct m_property {int dummy; } ;
struct TYPE_2__ {int osd; } ;
typedef TYPE_1__ MPContext ;


 int m_property_double_ro (int,void*,int ) ;
 struct mp_osd_res osd_get_vo_res (int ) ;

__attribute__((used)) static int mp_property_osd_par(void *ctx, struct m_property *prop,
                               int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct mp_osd_res vo_res = osd_get_vo_res(mpctx->osd);
    return m_property_double_ro(action, arg, vo_res.display_par);
}
