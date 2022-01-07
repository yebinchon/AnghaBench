
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int callback_free (int *,unsigned int) ;
 int lua_call (int *,int ,int ) ;
 int lua_rawgeti (int *,int ,int) ;
 int* stopped_callback ;

__attribute__((used)) static void callback_execute(lua_State* L, unsigned int id)
{
  if (stopped_callback[id] != LUA_NOREF) {
    int callback = stopped_callback[id];
    lua_rawgeti(L, LUA_REGISTRYINDEX, callback);
    callback_free(L, id);

    lua_call(L, 0, 0);
  }
}
