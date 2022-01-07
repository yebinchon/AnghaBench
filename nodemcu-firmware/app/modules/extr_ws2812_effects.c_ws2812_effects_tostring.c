
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addchar (int *,char) ;
 int luaL_addstring (int *,char*) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int ws2812_effects_tostring(lua_State* L) {

  luaL_Buffer result;
  luaL_buffinit(L, &result);

  luaL_addchar(&result, '[');
  luaL_addstring(&result, "effects");
  luaL_addchar(&result, ']');
  luaL_pushresult(&result);

  return 1;
}
