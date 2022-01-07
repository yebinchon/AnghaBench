
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ t; struct TYPE_4__* next; } ;
typedef TYPE_1__ coap_queue_t ;



int coap_insert_node(coap_queue_t **queue, coap_queue_t *node) {
  coap_queue_t *p, *q;
  if ( !queue || !node )
    return 0;


  if ( !*queue ) {
    *queue = node;
    return 1;
  }


  q = *queue;
  if (node->t < q->t) {
    node->next = q;
    *queue = node;
    q->t -= node->t;
    return 1;
  }


  do {
    node->t -= q->t;
    p = q;
    q = q->next;
  } while (q && q->t <= node->t);


  if (q) {
    q->t -= node->t;
  }
  node->next = q;
  p->next = node;
  return 1;
}
