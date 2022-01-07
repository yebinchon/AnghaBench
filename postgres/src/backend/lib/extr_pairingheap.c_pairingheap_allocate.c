
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pairingheap_comparator ;
struct TYPE_3__ {int * ph_root; void* ph_arg; int ph_compare; } ;
typedef TYPE_1__ pairingheap ;


 scalar_t__ palloc (int) ;

pairingheap *
pairingheap_allocate(pairingheap_comparator compare, void *arg)
{
 pairingheap *heap;

 heap = (pairingheap *) palloc(sizeof(pairingheap));
 heap->ph_compare = compare;
 heap->ph_arg = arg;

 heap->ph_root = ((void*)0);

 return heap;
}
