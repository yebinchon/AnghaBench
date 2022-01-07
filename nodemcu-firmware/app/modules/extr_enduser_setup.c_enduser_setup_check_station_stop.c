
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int check_station_timer; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int os_timer_disarm (int *) ;
 TYPE_1__* state ;

__attribute__((used)) static void enduser_setup_check_station_stop(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_check_station_stop");

  if (state != ((void*)0))
  {
    os_timer_disarm(&(state->check_station_timer));
  }
}
