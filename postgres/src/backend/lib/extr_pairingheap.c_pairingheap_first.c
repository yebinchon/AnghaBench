
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pairingheap_node ;
struct TYPE_4__ {int * ph_root; } ;
typedef TYPE_1__ pairingheap ;


 int Assert (int) ;
 int pairingheap_is_empty (TYPE_1__*) ;

pairingheap_node *
pairingheap_first(pairingheap *heap)
{
 Assert(!pairingheap_is_empty(heap));

 return heap->ph_root;
}
