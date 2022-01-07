
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TNUMBER ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushinteger (int *,int ) ;
 scalar_t__ lua_type (int *,int) ;
 int wifi_get_channel () ;
 int wifi_set_channel (int) ;

__attribute__((used)) static int wifi_monitor_channel(lua_State *L) {
  lua_pushinteger(L, wifi_get_channel());
  if (lua_type(L, 1) == LUA_TNUMBER) {
    int channel = luaL_checkinteger(L, 1);

    if (channel < 1 || channel > 15) {
      return luaL_error(L, "Channel number (%d) is out of range", channel);
    }
    wifi_set_channel(channel);
  }

  return 1;
}
