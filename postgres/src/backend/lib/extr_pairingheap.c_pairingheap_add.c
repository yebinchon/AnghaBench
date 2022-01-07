
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * first_child; } ;
typedef TYPE_1__ pairingheap_node ;
struct TYPE_10__ {TYPE_5__* ph_root; } ;
typedef TYPE_2__ pairingheap ;
struct TYPE_11__ {int * next_sibling; int * prev_or_parent; } ;


 TYPE_5__* merge (TYPE_2__*,TYPE_5__*,TYPE_1__*) ;

void
pairingheap_add(pairingheap *heap, pairingheap_node *node)
{
 node->first_child = ((void*)0);


 heap->ph_root = merge(heap, heap->ph_root, node);
 heap->ph_root->prev_or_parent = ((void*)0);
 heap->ph_root->next_sibling = ((void*)0);
}
