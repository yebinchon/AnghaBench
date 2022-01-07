
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; } ;


 int __ptr_ring_consume_batched (struct ptr_ring*,void**,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int ptr_ring_consume_batched_any(struct ptr_ring *r,
            void **array, int n)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&r->consumer_lock, flags);
 ret = __ptr_ring_consume_batched(r, array, n);
 spin_unlock_irqrestore(&r->consumer_lock, flags);

 return ret;
}
