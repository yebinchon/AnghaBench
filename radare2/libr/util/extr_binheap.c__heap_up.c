
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* cmp ) (void*,void*) ;int a; } ;
typedef TYPE_1__ RBinHeap ;


 void* r_pvector_at (int *,size_t) ;
 int r_pvector_set (int *,size_t,void*) ;
 scalar_t__ stub1 (void*,void*) ;

__attribute__((used)) static inline void _heap_up(RBinHeap *h, size_t i, void *x) {
 size_t j;
 for (; i && (j = (i-1) >> 1, h->cmp (x, r_pvector_at (&h->a, j)) < 0); i = j) {
  r_pvector_set (&h->a, i, r_pvector_at (&h->a, j));
 }
 r_pvector_set (&h->a, i, x);
}
