
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_osd_res {double w; double h; int display_par; } ;
struct MPContext {int osd; } ;
typedef int lua_State ;


 double MPMAX (double,int) ;
 struct MPContext* get_mpctx (int *) ;
 int lua_pushnumber (int *,double) ;
 struct mp_osd_res osd_get_vo_res (int ) ;

__attribute__((used)) static int script_get_osd_size(lua_State *L)
{
    struct MPContext *mpctx = get_mpctx(L);
    struct mp_osd_res vo_res = osd_get_vo_res(mpctx->osd);
    double aspect = 1.0 * vo_res.w / MPMAX(vo_res.h, 1) /
                    (vo_res.display_par ? vo_res.display_par : 1);
    lua_pushnumber(L, vo_res.w);
    lua_pushnumber(L, vo_res.h);
    lua_pushnumber(L, aspect);
    return 3;
}
