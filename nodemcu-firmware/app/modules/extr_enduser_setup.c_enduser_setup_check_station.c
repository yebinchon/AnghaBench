
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int addr; } ;
struct ip_info {TYPE_1__ ip; } ;
struct TYPE_4__ {int softAPchannel; int lastStationStatus; int success; int callbackDone; int shutdown_timer; scalar_t__ connecting; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int FALSE ;
 int IP2STR (int *) ;
 int SOFTAP_MODE ;
 int STATION_IF ;
 int SWTIMER_REG_CB (int ,int ) ;
 int SWTIMER_RESUME ;
 int enduser_setup_ap_start () ;
 int enduser_setup_check_station_stop () ;
 int enduser_setup_connected_callback () ;
 int enduser_setup_stop_callback ;
 int ipaddr ;
 int manual ;
 int memset (struct ip_info*,int ,int) ;
 int os_timer_arm (int *,int,int ) ;
 int os_timer_setfn (int *,int ,int *) ;
 int sprintf (char*,char*,int,...) ;
 TYPE_2__* state ;
 int wifi_get_channel () ;
 int wifi_get_ip_info (int ,struct ip_info*) ;
 int wifi_set_opmode (int ) ;
 int wifi_station_disconnect () ;
 int wifi_station_get_connect_status () ;

__attribute__((used)) static void enduser_setup_check_station(void *p)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_check_station");

  (void)p;
  struct ip_info ip;
  memset(&ip, 0, sizeof(struct ip_info));

  wifi_get_ip_info(STATION_IF, &ip);

  int i;
  char has_ip = 0;
  for (i = 0; i < sizeof(struct ip_info); ++i)
  {
    has_ip |= ((char *) &ip)[i];
  }

  uint8_t currChan = wifi_get_channel();

  if (has_ip == 0)
  {

    uint8_t curr_status = wifi_station_get_connect_status();
    char buf[20];
    sprintf(buf, "status=%d,chan=%d", curr_status, currChan);
    ENDUSER_SETUP_DEBUG(buf);

    if (curr_status == 2 || curr_status == 3 || curr_status == 4)
    {
      state->connecting = 0;





      if (currChan != state->softAPchannel) {
        state->lastStationStatus = curr_status;

        ENDUSER_SETUP_DEBUG("Turning off Station due to different channel than AP");

        wifi_station_disconnect();
        wifi_set_opmode(SOFTAP_MODE);
        enduser_setup_ap_start();
      }
   }
   return;
  }

  sprintf (ipaddr, "%d.%d.%d.%d", IP2STR(&ip.ip.addr));

  state->success = 1;
  state->lastStationStatus = 5;
  state->connecting = 0;







  if (currChan == state->softAPchannel)
  {
    enduser_setup_connected_callback();
    state->callbackDone = 1;
  }
  else
  {
    ENDUSER_SETUP_DEBUG("Turning off Station due to different channel than AP");
    wifi_station_disconnect();
    wifi_set_opmode(SOFTAP_MODE);
    enduser_setup_ap_start();
  }

  enduser_setup_check_station_stop();


  if (!manual)
  {
    os_timer_setfn(&(state->shutdown_timer), enduser_setup_stop_callback, ((void*)0));
    SWTIMER_REG_CB(enduser_setup_stop_callback, SWTIMER_RESUME);


    os_timer_arm(&(state->shutdown_timer), 10*1000, FALSE);
  }
}
