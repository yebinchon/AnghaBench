
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int coap_queue_t ;


 scalar_t__ calloc (int,int) ;

__attribute__((used)) static inline coap_queue_t *
coap_malloc_node(void) {
  return (coap_queue_t *)calloc(1,sizeof(coap_queue_t));
}
