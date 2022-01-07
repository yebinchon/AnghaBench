
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int coap_timer ;
 int os_timer_disarm (int *) ;

void coap_timer_stop(void){
  os_timer_disarm(&coap_timer);
}
