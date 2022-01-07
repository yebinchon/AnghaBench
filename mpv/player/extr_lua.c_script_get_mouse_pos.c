
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int input; } ;
typedef int lua_State ;


 struct MPContext* get_mpctx (int *) ;
 int lua_pushnumber (int *,int) ;
 int mp_input_get_mouse_pos (int ,int*,int*) ;

__attribute__((used)) static int script_get_mouse_pos(lua_State *L)
{
    struct MPContext *mpctx = get_mpctx(L);
    int px, py;
    mp_input_get_mouse_pos(mpctx->input, &px, &py);
    lua_pushnumber(L, px);
    lua_pushnumber(L, py);
    return 2;
}
