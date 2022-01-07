
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int producer_lock; } ;


 int __ptr_ring_full (struct ptr_ring*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline bool ptr_ring_full_irq(struct ptr_ring *r)
{
 bool ret;

 spin_lock_irq(&r->producer_lock);
 ret = __ptr_ring_full(r);
 spin_unlock_irq(&r->producer_lock);

 return ret;
}
