
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int temp ;
struct station_config {char* ssid; char* password; int bssid; scalar_t__ bssid_set; } ;
typedef int lua_State ;


 char* MAC2STR (int ) ;
 char* MACSTR ;
 int WIFI_DBG (char*,...) ;
 int lua_insert (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 int lua_settable (int *,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;
 int wifi_station_get_ap_info (struct station_config*) ;

__attribute__((used)) static int wifi_station_get_ap_info4lua( lua_State* L )
{
  struct station_config config[5];
  char temp[sizeof(config[0].password)+1];
  uint8 number_of_aps = wifi_station_get_ap_info(config);




  lua_newtable(L);
  lua_pushnumber(L, number_of_aps);
  lua_setfield(L, -2, "qty");
  WIFI_DBG("\n\t# of APs stored in flash:%d\n", number_of_aps);
  WIFI_DBG(" %-6s %-32s %-64s %-17s\n", "index:", "ssid:", "password:", "bssid:");

  for(int i=0;i<number_of_aps;i++)
  {
    lua_newtable(L);

    memset(temp, 0, sizeof(temp));
    memcpy(temp, config[i].ssid, sizeof(config[i].ssid));
    lua_pushstring(L, temp);
    lua_setfield(L, -2, "ssid");




    memset(temp, 0, sizeof(temp));
    if(strlen(config[i].password) > 0)
    {
      memcpy(temp, config[i].password, sizeof(config[i].password));
      lua_pushstring(L, temp);
      lua_setfield(L, -2, "pwd");
    }




    memset(temp, 0, sizeof(temp));
    if (config[i].bssid_set)
    {
      sprintf(temp, MACSTR, MAC2STR(config[i].bssid));
      lua_pushstring(L, temp);
      lua_setfield(L, -2, "bssid");
    }




    lua_pushnumber(L, i+1);
    lua_insert(L, -2);
    lua_settable(L, -3);
  }
  return 1;
}
