
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int NODE_DBG (char*) ;
 int bme680_timer ;
 int luaL_unref (int *,int ,int ) ;
 int lua_call (int *,int ,int ) ;
 int lua_connected_readout_ref ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,int ) ;
 int os_timer_disarm (int *) ;

__attribute__((used)) static void bme280_readoutdone (void *arg)
{
 NODE_DBG("timer out\n");
 lua_State *L = lua_getstate();
 lua_rawgeti (L, LUA_REGISTRYINDEX, lua_connected_readout_ref);
 lua_call (L, 0, 0);
 luaL_unref (L, LUA_REGISTRYINDEX, lua_connected_readout_ref);
 os_timer_disarm (&bme680_timer);
}
