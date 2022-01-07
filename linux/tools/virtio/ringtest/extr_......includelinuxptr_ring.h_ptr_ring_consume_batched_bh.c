
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; } ;


 int __ptr_ring_consume_batched (struct ptr_ring*,void**,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline int ptr_ring_consume_batched_bh(struct ptr_ring *r,
           void **array, int n)
{
 int ret;

 spin_lock_bh(&r->consumer_lock);
 ret = __ptr_ring_consume_batched(r, array, n);
 spin_unlock_bh(&r->consumer_lock);

 return ret;
}
