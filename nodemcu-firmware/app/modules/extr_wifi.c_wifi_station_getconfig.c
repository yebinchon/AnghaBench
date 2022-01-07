
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
struct station_config {scalar_t__ ssid; scalar_t__ password; int bssid; int bssid_set; } ;
typedef int lua_State ;


 int MAC2STR (int ) ;
 char* MACSTR ;
 scalar_t__ lua_isboolean (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 int lua_toboolean (int *,int) ;
 int memcpy (char*,scalar_t__,int) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,int ) ;
 scalar_t__ strlen (scalar_t__) ;
 int wifi_station_get_config (struct station_config*) ;
 int wifi_station_get_config_default (struct station_config*) ;

__attribute__((used)) static int wifi_station_getconfig( lua_State* L, bool get_flash_cfg)
{
  struct station_config sta_conf;
  char temp[sizeof(sta_conf.password)+1];

  if(get_flash_cfg)
  {
    wifi_station_get_config_default(&sta_conf);
  }
  else
  {
    wifi_station_get_config(&sta_conf);
  }

  if(sta_conf.ssid==0)
  {
    lua_pushnil(L);
      return 1;
  }
  else
  {
    if(lua_isboolean(L, 1) && lua_toboolean(L, 1)==1)
    {
      lua_newtable(L);
      memset(temp, 0, sizeof(temp));
      memcpy(temp, sta_conf.ssid, sizeof(sta_conf.ssid));
      lua_pushstring(L, temp);
      lua_setfield(L, -2, "ssid");

      if(strlen(sta_conf.password) > 0)
      {
        memset(temp, 0, sizeof(temp));
        memcpy(temp, sta_conf.password, sizeof(sta_conf.password));
        lua_pushstring(L, temp);
        lua_setfield(L, -2, "pwd");
      }

      lua_pushboolean(L, sta_conf.bssid_set);
      lua_setfield(L, -2, "bssid_set");

      memset(temp, 0, sizeof(temp));
      sprintf(temp, MACSTR, MAC2STR(sta_conf.bssid));
      lua_pushstring( L, temp);
      lua_setfield(L, -2, "bssid");

      return 1;
    }
    else
    {
      memset(temp, 0, sizeof(temp));
      memcpy(temp, sta_conf.ssid, sizeof(sta_conf.ssid));
      lua_pushstring(L, temp);
      memset(temp, 0, sizeof(temp));
      memcpy(temp, sta_conf.password, sizeof(sta_conf.password));
      lua_pushstring(L, temp);
      lua_pushinteger( L, sta_conf.bssid_set);
      sprintf(temp, MACSTR, MAC2STR(sta_conf.bssid));
      lua_pushstring( L, temp);
      return 4;
    }
  }
}
