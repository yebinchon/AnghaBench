
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bh_size; int * bh_nodes; scalar_t__ bh_has_heap_property; } ;
typedef TYPE_1__ binaryheap ;
typedef int Datum ;


 int Assert (int) ;
 int binaryheap_empty (TYPE_1__*) ;
 int sift_down (TYPE_1__*,int ) ;
 int swap_nodes (TYPE_1__*,int ,int) ;

Datum
binaryheap_remove_first(binaryheap *heap)
{
 Assert(!binaryheap_empty(heap) && heap->bh_has_heap_property);

 if (heap->bh_size == 1)
 {
  heap->bh_size--;
  return heap->bh_nodes[0];
 }






 swap_nodes(heap, 0, heap->bh_size - 1);
 heap->bh_size--;
 sift_down(heap, 0);

 return heap->bh_nodes[heap->bh_size];
}
