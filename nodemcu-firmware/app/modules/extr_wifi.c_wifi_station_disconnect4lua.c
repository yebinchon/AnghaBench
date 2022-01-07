
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int EVENT_STAMODE_DISCONNECTED ;
 scalar_t__ lua_isfunction (int *,int) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_remove (int *,int) ;
 int wifi_event_monitor_register (int *) ;
 int wifi_station_disconnect () ;

__attribute__((used)) static int wifi_station_disconnect4lua( lua_State* L )
{
  wifi_station_disconnect();
  return 0;
}
