
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {size_t size; size_t producer; scalar_t__* queue; } ;


 int ENOSPC ;
 int WRITE_ONCE (scalar_t__,void*) ;
 int smp_wmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int __ptr_ring_produce(struct ptr_ring *r, void *ptr)
{
 if (unlikely(!r->size) || r->queue[r->producer])
  return -ENOSPC;



 smp_wmb();

 WRITE_ONCE(r->queue[r->producer++], ptr);
 if (unlikely(r->producer >= r->size))
  r->producer = 0;
 return 0;
}
