
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TNIL ;
 int LUA_TROTABLE ;
 int LUA_TTABLE ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checktype (int *,int,int) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_getmetafield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_type (int *,int) ;

__attribute__((used)) static int luaB_setmetatable (lua_State *L) {
  int t = lua_type(L, 2);
  luaL_checktype(L, 1, LUA_TTABLE);
  luaL_argcheck(L, t == LUA_TNIL || t == LUA_TTABLE || t == LUA_TROTABLE, 2,
                    "nil or table expected");
  if (luaL_getmetafield(L, 1, "__metatable"))
    luaL_error(L, "cannot change a protected metatable");
  lua_settop(L, 2);
  lua_setmetatable(L, 1);
  return 1;
}
