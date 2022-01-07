
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int luaL_unref (int *,int ,int ) ;
 int * stopped_callback ;

__attribute__((used)) static void callback_free(lua_State* L, unsigned int id)
{
  luaL_unref(L, LUA_REGISTRYINDEX, stopped_callback[id]);
  stopped_callback[id] = LUA_NOREF;
}
