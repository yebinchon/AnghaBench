
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bh_nodes; } ;
typedef TYPE_1__ binaryheap ;
typedef int Datum ;



__attribute__((used)) static inline void
swap_nodes(binaryheap *heap, int a, int b)
{
 Datum swap;

 swap = heap->bh_nodes[a];
 heap->bh_nodes[a] = heap->bh_nodes[b];
 heap->bh_nodes[b] = swap;
}
