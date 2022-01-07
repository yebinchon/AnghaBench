
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int luaL_unref (int *,int ,int ) ;
 int recv_cb ;
 int wifi_promiscuous_enable (int ) ;
 int wifi_set_opmode_current (int) ;

__attribute__((used)) static int wifi_monitor_stop(lua_State *L) {
  wifi_promiscuous_enable(0);
  wifi_set_opmode_current(1);
  luaL_unref(L, LUA_REGISTRYINDEX, recv_cb);
  recv_cb = LUA_NOREF;
  return 0;
}
