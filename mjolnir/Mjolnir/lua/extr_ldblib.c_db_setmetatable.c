
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TNIL ;
 int LUA_TTABLE ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_type (int *,int) ;

__attribute__((used)) static int db_setmetatable (lua_State *L) {
  int t = lua_type(L, 2);
  luaL_argcheck(L, t == LUA_TNIL || t == LUA_TTABLE, 2,
                    "nil or table expected");
  lua_settop(L, 2);
  lua_setmetatable(L, 1);
  return 1;
}
