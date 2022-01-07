
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtc_timer_update (int) ;
 scalar_t__ soft_watchdog ;
 int system_restart () ;

void rtc_callback(void *arg){
 rtc_timer_update(1);
 if(soft_watchdog > 0){
  soft_watchdog--;
  if(soft_watchdog == 0)
   system_restart();
 }
}
