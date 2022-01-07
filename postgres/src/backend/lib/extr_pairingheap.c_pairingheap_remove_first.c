
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * next_sibling; int * prev_or_parent; struct TYPE_9__* first_child; } ;
typedef TYPE_1__ pairingheap_node ;
struct TYPE_10__ {TYPE_1__* ph_root; } ;
typedef TYPE_2__ pairingheap ;


 int Assert (int) ;
 TYPE_1__* merge_children (TYPE_2__*,TYPE_1__*) ;
 int pairingheap_is_empty (TYPE_2__*) ;

pairingheap_node *
pairingheap_remove_first(pairingheap *heap)
{
 pairingheap_node *result;
 pairingheap_node *children;

 Assert(!pairingheap_is_empty(heap));


 result = heap->ph_root;
 children = result->first_child;

 heap->ph_root = merge_children(heap, children);
 if (heap->ph_root)
 {
  heap->ph_root->prev_or_parent = ((void*)0);
  heap->ph_root->next_sibling = ((void*)0);
 }

 return result;
}
