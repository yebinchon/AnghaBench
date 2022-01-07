
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ coap_tick_t ;
struct TYPE_3__ {scalar_t__ t; } ;
typedef TYPE_1__ coap_queue_t ;


 int coap_timer_elapsed (scalar_t__*) ;

void coap_timer_update(coap_queue_t ** queue){
  if (!queue)
    return;
  coap_tick_t diff = 0;
  coap_queue_t *first = *queue;
  coap_timer_elapsed(&diff);
  if (first) {

    if (first->t >= diff){
      first->t -= diff;
    } else {
      first->t = 0;
    }
  }
}
