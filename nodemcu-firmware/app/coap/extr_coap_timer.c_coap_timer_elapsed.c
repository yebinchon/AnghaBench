
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ coap_tick_t ;


 scalar_t__ SYS_TIME_MAX ;
 scalar_t__ basetime ;
 int system_get_time () ;

void coap_timer_elapsed(coap_tick_t *diff){
  coap_tick_t now = system_get_time() / 1000;
  if(now>=basetime){
    *diff = now-basetime;
  } else {
    *diff = now + SYS_TIME_MAX -basetime;
  }
  basetime = now;
}
