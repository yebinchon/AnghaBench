
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct station_config {int dummy; } ;
typedef int sta_conf ;
typedef int lua_State ;


 int lua_pushboolean (int *,int) ;
 int memset (struct station_config*,int ,int) ;
 int wifi_station_disconnect () ;
 int wifi_station_set_auto_connect (int ) ;
 int wifi_station_set_config (struct station_config*) ;
 int wifi_station_set_config_current (struct station_config*) ;

__attribute__((used)) static int wifi_station_clear_config ( lua_State* L )
{
  struct station_config sta_conf;
  bool auto_connect=1;
  bool save_to_flash=1;

  memset(&sta_conf, 0, sizeof(sta_conf));

  wifi_station_disconnect();

  bool config_success;
  if(save_to_flash)
  {
    config_success = wifi_station_set_config(&sta_conf);
  }
  else
  {
    config_success = wifi_station_set_config_current(&sta_conf);
  }

  wifi_station_set_auto_connect((uint8)0);

  lua_pushboolean(L, config_success);
  return 1;
}
