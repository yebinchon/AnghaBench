
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnumber (int *,scalar_t__) ;
 scalar_t__ wifi_station_get_current_ap_id () ;

__attribute__((used)) static int wifi_station_get_ap_index( lua_State* L )
{
  lua_pushnumber(L, wifi_station_get_current_ap_id()+1);
  return 1;
}
