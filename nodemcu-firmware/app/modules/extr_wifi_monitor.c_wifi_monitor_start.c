
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 scalar_t__ LUA_TNUMBER ;
 scalar_t__ STATION_IDLE ;
 int eventmon_call_on_disconnected (int (*) ()) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int luaL_ref (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int mon_mask ;
 int mon_offset ;
 int mon_value ;
 int recv_cb ;
 int start_actually_monitoring () ;
 int wifi_promiscuous_enable (int ) ;
 int wifi_rx_cb ;
 int wifi_set_opmode_current (int) ;
 int wifi_set_promiscuous_rx_cb (int ) ;
 int wifi_station_disconnect () ;
 scalar_t__ wifi_station_get_connect_status () ;
 int wifi_station_set_auto_connect (int ) ;

__attribute__((used)) static int wifi_monitor_start(lua_State *L) {
  int argno = 1;
  if (lua_type(L, argno) == LUA_TNUMBER) {
    int offset = luaL_checkinteger(L, argno);
    argno++;
    if (lua_type(L, argno) == LUA_TNUMBER) {
      int value = luaL_checkinteger(L, argno);

      int mask = 0xff;
      argno++;

      if (lua_type(L, argno) == LUA_TNUMBER) {
        mask = luaL_checkinteger(L, argno);
        argno++;
      }
      mon_offset = offset - 1;
      mon_value = value;
      mon_mask = mask;
    } else {
      return luaL_error(L, "Must supply offset and value");
    }
  } else {

    mon_offset = 12;
    mon_value = 0x00;
    mon_mask = 0x0C;
  }
  if (lua_type(L, argno) == LUA_TFUNCTION || lua_type(L, argno) == LUA_TLIGHTFUNCTION)
  {
    lua_pushvalue(L, argno);
    recv_cb = luaL_ref(L, LUA_REGISTRYINDEX);
    uint8 connect_status = wifi_station_get_connect_status();
    wifi_station_set_auto_connect(0);
    wifi_set_opmode_current(1);
    wifi_promiscuous_enable(0);
    wifi_station_disconnect();
    wifi_set_promiscuous_rx_cb(wifi_rx_cb);


    if (connect_status == STATION_IDLE) {
      start_actually_monitoring();
    } else {
      eventmon_call_on_disconnected(start_actually_monitoring);
    }
    return 0;
  }
  return luaL_error(L, "Missing callback");
}
