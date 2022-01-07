
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_head; int * queue; int size; } ;


 size_t READ_ONCE (int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline bool __ptr_ring_empty(struct ptr_ring *r)
{
 if (likely(r->size))
  return !r->queue[READ_ONCE(r->consumer_head)];
 return 1;
}
