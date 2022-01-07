
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; } ;


 int __ptr_ring_consume_batched (struct ptr_ring*,void**,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int ptr_ring_consume_batched(struct ptr_ring *r,
        void **array, int n)
{
 int ret;

 spin_lock(&r->consumer_lock);
 ret = __ptr_ring_consume_batched(r, array, n);
 spin_unlock(&r->consumer_lock);

 return ret;
}
