
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * bh_nodes; scalar_t__ bh_has_heap_property; } ;
typedef TYPE_1__ binaryheap ;
typedef int Datum ;


 int Assert (int) ;
 int binaryheap_empty (TYPE_1__*) ;

Datum
binaryheap_first(binaryheap *heap)
{
 Assert(!binaryheap_empty(heap) && heap->bh_has_heap_property);
 return heap->bh_nodes[0];
}
