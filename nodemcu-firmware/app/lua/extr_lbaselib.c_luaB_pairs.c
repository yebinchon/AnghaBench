
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkanytable (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int luaB_pairs (lua_State *L) {
  luaL_checkanytable(L, 1);
  lua_pushvalue(L, lua_upvalueindex(1));
  lua_pushvalue(L, 1);
  lua_pushnil(L);
  return 3;
}
