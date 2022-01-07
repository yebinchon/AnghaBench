
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkany (int *,int) ;
 int luaL_checkanytable (int *,int) ;
 int lua_rawget (int *,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int luaB_rawget (lua_State *L) {
  luaL_checkanytable(L, 1);
  luaL_checkany(L, 2);
  lua_settop(L, 2);
  lua_rawget(L, 1);
  return 1;
}
