
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int LUA_TFUNCTION ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_dump (int *,int ,int *,int) ;
 int lua_settop (int *,int) ;
 int lua_toboolean (int *,int) ;
 int writer ;

__attribute__((used)) static int str_dump (lua_State *L) {
  luaL_Buffer b;
  int strip = lua_toboolean(L, 2);
  luaL_checktype(L, 1, LUA_TFUNCTION);
  lua_settop(L, 1);
  luaL_buffinit(L,&b);
  if (lua_dump(L, writer, &b, strip) != 0)
    return luaL_error(L, "unable to dump given function");
  luaL_pushresult(&b);
  return 1;
}
