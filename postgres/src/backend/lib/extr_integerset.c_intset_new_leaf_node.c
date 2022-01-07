
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * next; scalar_t__ num_items; scalar_t__ level; } ;
typedef TYPE_1__ intset_leaf_node ;
struct TYPE_7__ {int mem_used; int context; } ;
typedef TYPE_2__ IntegerSet ;


 scalar_t__ GetMemoryChunkSpace (TYPE_1__*) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;

__attribute__((used)) static intset_leaf_node *
intset_new_leaf_node(IntegerSet *intset)
{
 intset_leaf_node *n;

 n = (intset_leaf_node *) MemoryContextAlloc(intset->context,
            sizeof(intset_leaf_node));
 intset->mem_used += GetMemoryChunkSpace(n);

 n->level = 0;
 n->num_items = 0;
 n->next = ((void*)0);

 return n;
}
