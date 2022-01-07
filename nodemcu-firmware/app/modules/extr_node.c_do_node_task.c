
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ task_param_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int luaL_unref (int *,int ,int) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushinteger (int *,int ) ;
 int lua_rawgeti (int *,int ,int) ;

__attribute__((used)) static void do_node_task (task_param_t task_fn_ref, uint8_t prio)
{
  lua_State* L = lua_getstate();
  lua_rawgeti(L, LUA_REGISTRYINDEX, (int)task_fn_ref);
  luaL_unref(L, LUA_REGISTRYINDEX, (int)task_fn_ref);
  lua_pushinteger(L, prio);
  lua_call(L, 1, 0);
}
