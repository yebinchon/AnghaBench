
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct station_info {int ip; int bssid; } ;
typedef int lua_State ;


 int IP2STR (int *) ;
 int IPSTR ;
 int MAC2STR (int ) ;
 char* MACSTR ;
 struct station_info* STAILQ_NEXT (struct station_info*,int ) ;
 scalar_t__ STATION_MODE ;
 int luaL_error (int *,char*) ;
 int lua_newtable (int *) ;
 int next ;
 int sprintf (char*,char*,int ) ;
 int wifi_add_sprintf_field (int *,char*,int ,int ) ;
 scalar_t__ wifi_get_opmode () ;
 int wifi_softap_free_station_info () ;
 struct station_info* wifi_softap_get_station_info () ;

__attribute__((used)) static int wifi_ap_listclient( lua_State* L )
{
  if (wifi_get_opmode() == STATION_MODE)
  {
    return luaL_error( L, "Can't list clients in STATION mode" );
  }

  char temp[64];

  lua_newtable(L);

  struct station_info * station = wifi_softap_get_station_info();
  struct station_info * next_station;
  while (station != ((void*)0))
  {
    sprintf(temp, MACSTR, MAC2STR(station->bssid));
    wifi_add_sprintf_field(L, temp, IPSTR, IP2STR(&station->ip));
    station = STAILQ_NEXT(station, next);
  }
  wifi_softap_free_station_info();

  return 1;
}
