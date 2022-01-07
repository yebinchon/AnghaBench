
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int producer_lock; } ;


 int __ptr_ring_produce (struct ptr_ring*,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int ptr_ring_produce_any(struct ptr_ring *r, void *ptr)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&r->producer_lock, flags);
 ret = __ptr_ring_produce(r, ptr);
 spin_unlock_irqrestore(&r->producer_lock, flags);

 return ret;
}
