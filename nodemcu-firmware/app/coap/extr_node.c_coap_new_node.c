
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int coap_queue_t ;


 int * coap_malloc_node () ;
 int memset (int *,int ,int) ;

coap_queue_t * coap_new_node(void) {
  coap_queue_t *node;
  node = coap_malloc_node();

  if ( ! node ) {
    return ((void*)0);
  }

  memset(node, 0, sizeof(*node));
  return node;
}
