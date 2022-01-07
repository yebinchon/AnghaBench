
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int) ;
 int lua_rawgeti (int *,int ,int) ;

__attribute__((used)) static void dispatch_callback( lua_State *L, int self_ref, int cb_ref, int returns )
{
  if (cb_ref != LUA_NOREF) {
    lua_rawgeti( L, LUA_REGISTRYINDEX, cb_ref );
    lua_rawgeti( L, LUA_REGISTRYINDEX, self_ref );
    lua_call( L, 1, returns );
  }
}
