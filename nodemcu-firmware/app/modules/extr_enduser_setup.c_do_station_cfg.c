
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ task_param_t ;
struct station_config {int dummy; } ;
struct TYPE_2__ {int connecting; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int luaM_free (int ,struct station_config*) ;
 int lua_getstate () ;
 TYPE_1__* state ;
 int wifi_station_connect () ;
 int wifi_station_disconnect () ;
 int wifi_station_set_config (struct station_config*) ;

__attribute__((used)) static void do_station_cfg (task_param_t param, uint8_t prio)
{
  ENDUSER_SETUP_DEBUG("do_station_cfg");

  state->connecting = 1;
  struct station_config *cnf = (struct station_config *)param;
  (void)prio;
  wifi_station_disconnect ();
  wifi_station_set_config (cnf);
  wifi_station_connect ();
  luaM_free(lua_getstate(), cnf);
}
