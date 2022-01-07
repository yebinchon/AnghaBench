
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bh_has_heap_property; scalar_t__ bh_size; } ;
typedef TYPE_1__ binaryheap ;


 int parent_offset (scalar_t__) ;
 int sift_down (TYPE_1__*,int) ;

void
binaryheap_build(binaryheap *heap)
{
 int i;

 for (i = parent_offset(heap->bh_size - 1); i >= 0; i--)
  sift_down(heap, i);
 heap->bh_has_heap_property = 1;
}
