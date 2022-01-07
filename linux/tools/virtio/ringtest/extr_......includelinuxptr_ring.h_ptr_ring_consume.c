
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int consumer_lock; } ;


 void* __ptr_ring_consume (struct ptr_ring*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void *ptr_ring_consume(struct ptr_ring *r)
{
 void *ptr;

 spin_lock(&r->consumer_lock);
 ptr = __ptr_ring_consume(r);
 spin_unlock(&r->consumer_lock);

 return ptr;
}
