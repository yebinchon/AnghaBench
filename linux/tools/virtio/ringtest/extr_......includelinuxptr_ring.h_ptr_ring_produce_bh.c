
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int producer_lock; } ;


 int __ptr_ring_produce (struct ptr_ring*,void*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline int ptr_ring_produce_bh(struct ptr_ring *r, void *ptr)
{
 int ret;

 spin_lock_bh(&r->producer_lock);
 ret = __ptr_ring_produce(r, ptr);
 spin_unlock_bh(&r->producer_lock);

 return ret;
}
