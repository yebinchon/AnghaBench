
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct bss_info* stqe_next; } ;
struct bss_info {scalar_t__ rssi; int channel; TYPE_1__ next; } ;
typedef scalar_t__ int8_t ;
struct TYPE_4__ {int softAPchannel; } ;
typedef scalar_t__ STATUS ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 scalar_t__ OK ;
 int enduser_setup_ap_start () ;
 int enduser_setup_check_station_start () ;
 TYPE_2__* state ;

__attribute__((used)) static void on_initial_scan_done (void *arg, STATUS status)
{
  ENDUSER_SETUP_DEBUG("on_initial_scan_done");

  if (state == ((void*)0))
  {
    return;
  }

  int8_t rssi = -100;

  if (status == OK)
  {
    for (struct bss_info *wn = arg; wn; wn = wn->next.stqe_next)
    {
      if (wn->rssi > rssi)
      {
        state->softAPchannel = wn->channel;
        rssi = wn->rssi;
      }
    }
  }

  enduser_setup_ap_start();
  enduser_setup_check_station_start();
}
