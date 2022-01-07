
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaB_error (int *) ;
 int luaL_checkany (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushliteral (int *,char*) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int) ;
 scalar_t__ lua_toboolean (int *,int) ;

__attribute__((used)) static int luaB_assert (lua_State *L) {
  if (lua_toboolean(L, 1))
    return lua_gettop(L);
  else {
    luaL_checkany(L, 1);
    lua_remove(L, 1);
    lua_pushliteral(L, "assertion failed!");
    lua_settop(L, 1);
    return luaB_error(L);
  }
}
