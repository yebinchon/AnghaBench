
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int* queue; size_t producer; } ;



__attribute__((used)) static inline bool __ptr_ring_full(struct ptr_ring *r)
{
 return r->queue[r->producer];
}
