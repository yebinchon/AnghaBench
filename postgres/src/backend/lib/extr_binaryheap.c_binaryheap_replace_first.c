
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bh_size; int * bh_nodes; scalar_t__ bh_has_heap_property; } ;
typedef TYPE_1__ binaryheap ;
typedef int Datum ;


 int Assert (int) ;
 int binaryheap_empty (TYPE_1__*) ;
 int sift_down (TYPE_1__*,int ) ;

void
binaryheap_replace_first(binaryheap *heap, Datum d)
{
 Assert(!binaryheap_empty(heap) && heap->bh_has_heap_property);

 heap->bh_nodes[0] = d;

 if (heap->bh_size > 1)
  sift_down(heap, 0);
}
