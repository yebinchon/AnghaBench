
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_param_t ;
typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int luaL_unref (int *,int ,int ) ;
 int lua_call (int *,int ,int ) ;
 int lua_done_ref ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,int ) ;

__attribute__((used)) static void somfy_transmissionDone (task_param_t arg)
{
    lua_State *L = lua_getstate();
    lua_rawgeti (L, LUA_REGISTRYINDEX, lua_done_ref);
    luaL_unref (L, LUA_REGISTRYINDEX, lua_done_ref);
    lua_done_ref = LUA_NOREF;
    lua_call (L, 0, 0);
}
