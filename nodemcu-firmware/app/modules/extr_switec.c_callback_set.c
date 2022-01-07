
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 int callback_free (int *,unsigned int) ;
 int luaL_ref (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int * stopped_callback ;

__attribute__((used)) static void callback_set(lua_State* L, unsigned int id, int argNumber)
{
  if (lua_type(L, argNumber) == LUA_TFUNCTION || lua_type(L, argNumber) == LUA_TLIGHTFUNCTION) {
    lua_pushvalue(L, argNumber);
    callback_free(L, id);
    stopped_callback[id] = luaL_ref(L, LUA_REGISTRYINDEX);
  }
}
