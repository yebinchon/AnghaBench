
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t; } ;
typedef TYPE_1__ coap_queue_t ;


 int coap_timer_setup (TYPE_1__**,int ) ;

void coap_timer_start(coap_queue_t ** queue){
  if(*queue){
    coap_timer_setup(queue, (*queue)->t);
  }
}
