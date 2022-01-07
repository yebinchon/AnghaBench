
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; } ;


 int __ptr_ring_empty (struct ptr_ring*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline bool ptr_ring_empty_bh(struct ptr_ring *r)
{
 bool ret;

 spin_lock_bh(&r->consumer_lock);
 ret = __ptr_ring_empty(r);
 spin_unlock_bh(&r->consumer_lock);

 return ret;
}
