
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int producer; void** queue; scalar_t__ consumer_tail; scalar_t__ consumer_head; } ;
typedef int gfp_t ;


 void* __ptr_ring_consume (struct ptr_ring*) ;
 int __ptr_ring_set_size (struct ptr_ring*,int) ;

__attribute__((used)) static inline void **__ptr_ring_swap_queue(struct ptr_ring *r, void **queue,
        int size, gfp_t gfp,
        void (*destroy)(void *))
{
 int producer = 0;
 void **old;
 void *ptr;

 while ((ptr = __ptr_ring_consume(r)))
  if (producer < size)
   queue[producer++] = ptr;
  else if (destroy)
   destroy(ptr);

 if (producer >= size)
  producer = 0;
 __ptr_ring_set_size(r, size);
 r->producer = producer;
 r->consumer_head = 0;
 r->consumer_tail = 0;
 old = r->queue;
 r->queue = queue;

 return old;
}
