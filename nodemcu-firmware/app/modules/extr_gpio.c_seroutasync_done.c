
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_param_t ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ lua_done_ref; int * delay_table; int tablelen; } ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int luaL_error (int *,char*,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int luaM_freearray (int *,int *,int ,int ) ;
 int * lua_getstate () ;
 scalar_t__ lua_pcall (int *,int ,int ,int ) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int lua_tostring (int *,int) ;
 TYPE_1__ serout ;
 int uint32 ;

__attribute__((used)) static void seroutasync_done (task_param_t arg)
{
  lua_State *L = lua_getstate();
  if (serout.delay_table) {
    luaM_freearray(L, serout.delay_table, serout.tablelen, uint32);
    serout.delay_table = ((void*)0);
  }
  if (serout.lua_done_ref != LUA_NOREF) {
    lua_rawgeti (L, LUA_REGISTRYINDEX, serout.lua_done_ref);
    luaL_unref (L, LUA_REGISTRYINDEX, serout.lua_done_ref);
    serout.lua_done_ref = LUA_NOREF;
    if (lua_pcall(L, 0, 0, 0)) {

      luaL_error(L, "error: %s", lua_tostring(L, -1));
    }
  }
}
