
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_timer_func_t ;
typedef int coap_tick_t ;
typedef int coap_queue_t ;


 int SWTIMER_REG_CB (scalar_t__,int ) ;
 int SWTIMER_RESUME ;
 int coap_timer ;
 scalar_t__ coap_timer_tick ;
 int os_timer_arm (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int *,int **) ;

void coap_timer_setup(coap_queue_t ** queue, coap_tick_t t){
  os_timer_disarm(&coap_timer);
  os_timer_setfn(&coap_timer, (os_timer_func_t *)coap_timer_tick, queue);
  SWTIMER_REG_CB(coap_timer_tick, SWTIMER_RESUME);

  os_timer_arm(&coap_timer, t, 0);
}
