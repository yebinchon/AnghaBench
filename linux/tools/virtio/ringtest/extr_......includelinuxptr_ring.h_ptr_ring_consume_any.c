
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; } ;


 void* __ptr_ring_consume (struct ptr_ring*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void *ptr_ring_consume_any(struct ptr_ring *r)
{
 unsigned long flags;
 void *ptr;

 spin_lock_irqsave(&r->consumer_lock, flags);
 ptr = __ptr_ring_consume(r);
 spin_unlock_irqrestore(&r->consumer_lock, flags);

 return ptr;
}
