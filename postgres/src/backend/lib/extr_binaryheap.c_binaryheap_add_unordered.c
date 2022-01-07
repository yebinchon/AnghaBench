
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t bh_size; size_t bh_space; int bh_has_heap_property; int * bh_nodes; } ;
typedef TYPE_1__ binaryheap ;
typedef int Datum ;


 int ERROR ;
 int elog (int ,char*) ;

void
binaryheap_add_unordered(binaryheap *heap, Datum d)
{
 if (heap->bh_size >= heap->bh_space)
  elog(ERROR, "out of binary heap slots");
 heap->bh_has_heap_property = 0;
 heap->bh_nodes[heap->bh_size] = d;
 heap->bh_size++;
}
