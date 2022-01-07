
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushstring (int *,char*) ;
 char* wifi_station_get_hostname () ;

__attribute__((used)) static int wifi_sta_gethostname( lua_State* L )
{
  char* hostname = wifi_station_get_hostname();
  lua_pushstring(L, hostname);
  return 1;
}
