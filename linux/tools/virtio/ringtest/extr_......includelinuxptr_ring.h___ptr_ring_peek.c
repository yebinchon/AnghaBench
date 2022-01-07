
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {size_t consumer_head; int * queue; int size; } ;


 void* READ_ONCE (int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline void *__ptr_ring_peek(struct ptr_ring *r)
{
 if (likely(r->size))
  return READ_ONCE(r->queue[r->consumer_head]);
 return ((void*)0);
}
