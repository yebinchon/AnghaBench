
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_osd_res {double const ml; double const mt; double const mr; double const mb; } ;
typedef int js_State ;
struct TYPE_4__ {TYPE_1__* mpctx; } ;
struct TYPE_3__ {int osd; } ;


 TYPE_2__* jctx (int *) ;
 struct mp_osd_res osd_get_vo_res (int ) ;
 int push_nums_obj (int *,char const* const*,double const*) ;

__attribute__((used)) static void script_get_osd_margins(js_State *J)
{
    struct mp_osd_res r = osd_get_vo_res(jctx(J)->mpctx->osd);
    const char * const names[] = {"left", "top", "right", "bottom", ((void*)0)};
    const double vals[] = {r.ml, r.mt, r.mr, r.mb};
    push_nums_obj(J, names, vals);
}
