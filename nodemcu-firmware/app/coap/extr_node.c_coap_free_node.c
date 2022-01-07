
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int coap_queue_t ;


 int free (int *) ;

void coap_free_node(coap_queue_t *node) {
  free(node);
}
