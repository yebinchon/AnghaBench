
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_head; int consumer_tail; int batch; int size; int ** queue; } ;


 int WRITE_ONCE (int,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void __ptr_ring_discard_one(struct ptr_ring *r)
{
 int consumer_head = r->consumer_head;
 int head = consumer_head++;






 if (unlikely(consumer_head - r->consumer_tail >= r->batch ||
       consumer_head >= r->size)) {





  while (likely(head >= r->consumer_tail))
   r->queue[head--] = ((void*)0);
  r->consumer_tail = consumer_head;
 }
 if (unlikely(consumer_head >= r->size)) {
  consumer_head = 0;
  r->consumer_tail = 0;
 }

 WRITE_ONCE(r->consumer_head, consumer_head);
}
