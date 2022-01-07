
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int check_station_timer; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int SWTIMER_REG_CB (int ,int ) ;
 int SWTIMER_RESUME ;
 int TRUE ;
 int enduser_setup_check_station ;
 int os_timer_arm (int *,int,int ) ;
 int os_timer_setfn (int *,int ,int *) ;
 TYPE_1__* state ;

__attribute__((used)) static void enduser_setup_check_station_start(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_check_station_start");

  os_timer_setfn(&(state->check_station_timer), enduser_setup_check_station, ((void*)0));
  SWTIMER_REG_CB(enduser_setup_check_station, SWTIMER_RESUME);


  os_timer_arm(&(state->check_station_timer), 3*1000, TRUE);
}
