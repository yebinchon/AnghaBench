
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ lua_dbg_cb_ref; } ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushfstring (int *,char*,int,char const*) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 TYPE_1__* state ;

__attribute__((used)) static void enduser_setup_debug(int line, const char *str)
{
  lua_State *L = lua_getstate();
  if(state != ((void*)0) && state->lua_dbg_cb_ref != LUA_NOREF)
  {
    lua_rawgeti(L, LUA_REGISTRYINDEX, state->lua_dbg_cb_ref);
    lua_pushfstring(L, "%d: \t%s", line, str);
    lua_call(L, 1, 0);
  }
}
