
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sint8 ;
typedef int lua_State ;


 int NODE_DBG (char*,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int wifi_station_get_rssi () ;

__attribute__((used)) static int wifi_station_getrssi( lua_State* L ){
  sint8 rssival=wifi_station_get_rssi();
  NODE_DBG("\n\tRSSI is %d\n", rssival);
  if (rssival<10)
  {
    lua_pushinteger(L, rssival);
  }
  else
  {
    lua_pushnil(L);
  }
  return 1;
}
