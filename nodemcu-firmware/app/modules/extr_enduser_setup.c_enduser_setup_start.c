
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int STATION_MODE ;
 int do_station_cfg ;
 scalar_t__ do_station_cfg_handle ;
 int enduser_setup_check_station_start () ;
 scalar_t__ enduser_setup_dns_start () ;
 scalar_t__ enduser_setup_http_start () ;
 scalar_t__ enduser_setup_init (int *) ;
 int enduser_setup_stop (int ) ;
 char* ipaddr ;
 int lua_getstate () ;
 int manual ;
 int on_initial_scan_done ;
 scalar_t__ task_get_id (int ) ;
 int wifi_get_opmode () ;
 int wifi_set_opmode (int) ;
 int wifi_station_scan (int *,int ) ;

__attribute__((used)) static int enduser_setup_start(lua_State *L)
{

  ENDUSER_SETUP_DEBUG("enduser_setup_start");

  ipaddr[0] = '\0';

  if (!do_station_cfg_handle)
  {
    do_station_cfg_handle = task_get_id(do_station_cfg);
  }

  if(enduser_setup_init(L))
  {
    goto failed;
  }

  if (!manual)
  {
    ENDUSER_SETUP_DEBUG("Performing AP Scan to identify likely AP's channel. Enabling Station if it wasn't already.");
    wifi_set_opmode(STATION_MODE | wifi_get_opmode());
    wifi_station_scan(((void*)0), on_initial_scan_done);
  }
  else
  {
   enduser_setup_check_station_start();
  }

  if(enduser_setup_dns_start())
  {
    goto failed;
  }

  if(enduser_setup_http_start())
  {
    goto failed;
  }

  goto out;

failed:
  enduser_setup_stop(lua_getstate());
out:
  return 0;
}
