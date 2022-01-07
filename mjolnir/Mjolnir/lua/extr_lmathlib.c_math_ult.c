
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lua_Unsigned ;
typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 scalar_t__ luaL_checkinteger (int *,int) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int math_ult (lua_State *L) {
  lua_Integer a = luaL_checkinteger(L, 1);
  lua_Integer b = luaL_checkinteger(L, 2);
  lua_pushboolean(L, (lua_Unsigned)a < (lua_Unsigned)b);
  return 1;
}
