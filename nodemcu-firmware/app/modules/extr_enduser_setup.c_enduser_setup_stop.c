
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int callbackDone; scalar_t__ success; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int STATION_MODE ;
 int enduser_setup_ap_stop () ;
 int enduser_setup_connected_callback () ;
 int enduser_setup_dns_stop () ;
 int enduser_setup_free () ;
 int enduser_setup_http_stop () ;
 int manual ;
 TYPE_1__* state ;
 int wifi_get_opmode () ;
 int wifi_set_opmode (int) ;
 int wifi_station_connect () ;

__attribute__((used)) static int enduser_setup_stop(lua_State* L)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_stop");

  if (!manual)
  {
    enduser_setup_ap_stop();
  }
  if (state != ((void*)0) && state->success && !state->callbackDone)
  {
    wifi_set_opmode(STATION_MODE | wifi_get_opmode());
    wifi_station_connect();
    enduser_setup_connected_callback();
  }
  enduser_setup_dns_stop();
  enduser_setup_http_stop();
  enduser_setup_free();

  return 0;
}
