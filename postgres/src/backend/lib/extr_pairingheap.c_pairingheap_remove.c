
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* prev_or_parent; struct TYPE_9__* next_sibling; struct TYPE_9__* first_child; } ;
typedef TYPE_1__ pairingheap_node ;
struct TYPE_10__ {TYPE_1__* ph_root; } ;
typedef TYPE_2__ pairingheap ;


 int Assert (int) ;
 TYPE_1__* merge_children (TYPE_2__*,TYPE_1__*) ;
 int pairingheap_remove_first (TYPE_2__*) ;

void
pairingheap_remove(pairingheap *heap, pairingheap_node *node)
{
 pairingheap_node *children;
 pairingheap_node *replacement;
 pairingheap_node *next_sibling;
 pairingheap_node **prev_ptr;





 if (node == heap->ph_root)
 {
  (void) pairingheap_remove_first(heap);
  return;
 }





 children = node->first_child;
 next_sibling = node->next_sibling;





 if (node->prev_or_parent->first_child == node)
  prev_ptr = &node->prev_or_parent->first_child;
 else
  prev_ptr = &node->prev_or_parent->next_sibling;
 Assert(*prev_ptr == node);






 if (children)
 {
  replacement = merge_children(heap, children);

  replacement->prev_or_parent = node->prev_or_parent;
  replacement->next_sibling = node->next_sibling;
  *prev_ptr = replacement;
  if (next_sibling)
   next_sibling->prev_or_parent = replacement;
 }
 else
 {
  *prev_ptr = next_sibling;
  if (next_sibling)
   next_sibling->prev_or_parent = node->prev_or_parent;
 }
}
