
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_osd_res {int mb; int mr; int mt; int ml; } ;
struct MPContext {int osd; } ;
typedef int lua_State ;


 struct MPContext* get_mpctx (int *) ;
 int lua_pushnumber (int *,int ) ;
 struct mp_osd_res osd_get_vo_res (int ) ;

__attribute__((used)) static int script_get_osd_margins(lua_State *L)
{
    struct MPContext *mpctx = get_mpctx(L);
    struct mp_osd_res vo_res = osd_get_vo_res(mpctx->osd);
    lua_pushnumber(L, vo_res.ml);
    lua_pushnumber(L, vo_res.mt);
    lua_pushnumber(L, vo_res.mr);
    lua_pushnumber(L, vo_res.mb);
    return 4;
}
