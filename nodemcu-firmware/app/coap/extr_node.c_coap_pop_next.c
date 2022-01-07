
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ coap_queue_t ;



coap_queue_t * coap_pop_next( coap_queue_t **queue ) {
  coap_queue_t *next;

  if ( !(*queue) )
    return ((void*)0);

  next = *queue;
  *queue = (*queue)->next;



  next->next = ((void*)0);
  return next;
}
