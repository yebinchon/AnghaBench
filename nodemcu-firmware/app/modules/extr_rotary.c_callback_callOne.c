
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 int lua_pushinteger (int *,int) ;
 int lua_rawgeti (int *,int ,int) ;

__attribute__((used)) static void callback_callOne(lua_State* L, int cb, int mask, int arg, uint32_t time)
{
  if (cb != LUA_NOREF) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, cb);

    lua_pushinteger(L, mask);
    lua_pushinteger(L, arg);
    lua_pushinteger(L, time);

    lua_call(L, 3, 0);
  }
}
