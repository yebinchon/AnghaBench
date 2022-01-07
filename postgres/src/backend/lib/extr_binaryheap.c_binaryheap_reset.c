
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bh_has_heap_property; scalar_t__ bh_size; } ;
typedef TYPE_1__ binaryheap ;



void
binaryheap_reset(binaryheap *heap)
{
 heap->bh_size = 0;
 heap->bh_has_heap_property = 1;
}
