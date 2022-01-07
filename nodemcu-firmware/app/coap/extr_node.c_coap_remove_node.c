
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ coap_tid_t ;
struct TYPE_4__ {scalar_t__ const id; scalar_t__ t; struct TYPE_4__* next; } ;
typedef TYPE_1__ coap_queue_t ;


 int coap_delete_node (TYPE_1__*) ;

int coap_remove_node( coap_queue_t **queue, const coap_tid_t id){
  coap_queue_t *p, *q, *node;
  if ( !queue )
    return 0;
  if ( !*queue )
    return 0;

  q = *queue;
  if (q->id == id) {
    node = q;
    *queue = q->next;
    node->next = ((void*)0);
    if(*queue){
      (*queue)->t += node->t;
    }
    coap_delete_node(node);
    return 1;
  }


  while (q && q->id != id) {
    p = q;
    q = q->next;
  }


  if (q) {
    node = q;
    p->next = q->next;
    q = q->next;
    node->next = ((void*)0);
    if (q)
    {
      q->t += node->t;
    }
    coap_delete_node(node);
    return 1;
  }
  return 0;
}
