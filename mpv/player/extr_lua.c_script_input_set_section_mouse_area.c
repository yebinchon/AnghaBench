
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int input; } ;
typedef int lua_State ;


 struct MPContext* get_mpctx (int *) ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkstring (int *,int) ;
 int mp_input_set_section_mouse_area (int ,char*,int,int,int,int) ;

__attribute__((used)) static int script_input_set_section_mouse_area(lua_State *L)
{
    struct MPContext *mpctx = get_mpctx(L);

    char *section = (char *)luaL_checkstring(L, 1);
    int x0 = luaL_checkinteger(L, 2);
    int y0 = luaL_checkinteger(L, 3);
    int x1 = luaL_checkinteger(L, 4);
    int y1 = luaL_checkinteger(L, 5);
    mp_input_set_section_mouse_area(mpctx->input, section, x0, y0, x1, y1);
    return 0;
}
