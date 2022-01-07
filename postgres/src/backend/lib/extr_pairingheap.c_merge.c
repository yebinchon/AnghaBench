
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* first_child; struct TYPE_9__* next_sibling; struct TYPE_9__* prev_or_parent; } ;
typedef TYPE_1__ pairingheap_node ;
struct TYPE_10__ {scalar_t__ (* ph_compare ) (TYPE_1__*,TYPE_1__*,int ) ;int ph_arg; } ;
typedef TYPE_2__ pairingheap ;


 scalar_t__ stub1 (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static pairingheap_node *
merge(pairingheap *heap, pairingheap_node *a, pairingheap_node *b)
{
 if (a == ((void*)0))
  return b;
 if (b == ((void*)0))
  return a;


 if (heap->ph_compare(a, b, heap->ph_arg) < 0)
 {
  pairingheap_node *tmp;

  tmp = a;
  a = b;
  b = tmp;
 }


 if (a->first_child)
  a->first_child->prev_or_parent = b;
 b->prev_or_parent = a;
 b->next_sibling = a->first_child;
 a->first_child = b;

 return a;
}
