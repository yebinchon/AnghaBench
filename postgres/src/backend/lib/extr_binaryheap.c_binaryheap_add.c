
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t bh_size; size_t bh_space; int * bh_nodes; } ;
typedef TYPE_1__ binaryheap ;
typedef int Datum ;


 int ERROR ;
 int elog (int ,char*) ;
 int sift_up (TYPE_1__*,int) ;

void
binaryheap_add(binaryheap *heap, Datum d)
{
 if (heap->bh_size >= heap->bh_space)
  elog(ERROR, "out of binary heap slots");
 heap->bh_nodes[heap->bh_size] = d;
 heap->bh_size++;
 sift_up(heap, heap->bh_size - 1);
}
