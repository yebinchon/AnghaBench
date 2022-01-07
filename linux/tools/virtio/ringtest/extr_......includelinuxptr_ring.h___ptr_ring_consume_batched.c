
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int dummy; } ;


 void* __ptr_ring_consume (struct ptr_ring*) ;

__attribute__((used)) static inline int __ptr_ring_consume_batched(struct ptr_ring *r,
          void **array, int n)
{
 void *ptr;
 int i;

 for (i = 0; i < n; i++) {
  ptr = __ptr_ring_consume(r);
  if (!ptr)
   break;
  array[i] = ptr;
 }

 return i;
}
