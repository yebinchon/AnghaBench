
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ lua_connected_cb_ref; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int ,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 TYPE_1__* state ;

__attribute__((used)) static void enduser_setup_connected_callback()
{
  ENDUSER_SETUP_DEBUG("enduser_setup_connected_callback");

  lua_State *L = lua_getstate();
  if (state != ((void*)0) && state->lua_connected_cb_ref != LUA_NOREF)
  {
    lua_rawgeti(L, LUA_REGISTRYINDEX, state->lua_connected_cb_ref);
    lua_call(L, 0, 0);
  }
}
