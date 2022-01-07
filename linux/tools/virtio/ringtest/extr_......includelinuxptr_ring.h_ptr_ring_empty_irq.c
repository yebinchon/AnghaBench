
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; } ;


 int __ptr_ring_empty (struct ptr_ring*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline bool ptr_ring_empty_irq(struct ptr_ring *r)
{
 bool ret;

 spin_lock_irq(&r->consumer_lock);
 ret = __ptr_ring_empty(r);
 spin_unlock_irq(&r->consumer_lock);

 return ret;
}
