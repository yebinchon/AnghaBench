
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next_sibling; } ;
typedef TYPE_1__ pairingheap_node ;
typedef int pairingheap ;


 TYPE_1__* merge (int *,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static pairingheap_node *
merge_children(pairingheap *heap, pairingheap_node *children)
{
 pairingheap_node *curr,
      *next;
 pairingheap_node *pairs;
 pairingheap_node *newroot;

 if (children == ((void*)0) || children->next_sibling == ((void*)0))
  return children;


 next = children;
 pairs = ((void*)0);
 for (;;)
 {
  curr = next;

  if (curr == ((void*)0))
   break;

  if (curr->next_sibling == ((void*)0))
  {

   curr->next_sibling = pairs;
   pairs = curr;
   break;
  }

  next = curr->next_sibling->next_sibling;



  curr = merge(heap, curr, curr->next_sibling);
  curr->next_sibling = pairs;
  pairs = curr;
 }




 newroot = pairs;
 next = pairs->next_sibling;
 while (next)
 {
  curr = next;
  next = curr->next_sibling;

  newroot = merge(heap, newroot, curr);
 }

 return newroot;
}
