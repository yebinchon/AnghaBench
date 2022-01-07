
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkanytable (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int luaB_next (lua_State *L) {
  luaL_checkanytable(L, 1);
  lua_settop(L, 2);
  if (lua_next(L, 1))
    return 2;
  else {
    lua_pushnil(L);
    return 1;
  }
}
