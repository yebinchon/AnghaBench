
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int dummy; } ;


 int __ptr_ring_discard_one (struct ptr_ring*) ;
 void* __ptr_ring_peek (struct ptr_ring*) ;

__attribute__((used)) static inline void *__ptr_ring_consume(struct ptr_ring *r)
{
 void *ptr;





 ptr = __ptr_ring_peek(r);
 if (ptr)
  __ptr_ring_discard_one(r);

 return ptr;
}
