
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; } ;


 int __ptr_ring_empty (struct ptr_ring*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline bool ptr_ring_empty_any(struct ptr_ring *r)
{
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&r->consumer_lock, flags);
 ret = __ptr_ring_empty(r);
 spin_unlock_irqrestore(&r->consumer_lock, flags);

 return ret;
}
