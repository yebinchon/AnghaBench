
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iter_active; int * iter_values; scalar_t__ iter_num_values; scalar_t__ iter_valueno; scalar_t__ iter_itemno; int * iter_node; scalar_t__ num_buffered_values; int * leftmost_leaf; int rightmost_nodes; int * root; scalar_t__ num_levels; scalar_t__ highest_value; scalar_t__ num_entries; int mem_used; int context; } ;
typedef TYPE_1__ IntegerSet ;


 int CurrentMemoryContext ;
 int GetMemoryChunkSpace (TYPE_1__*) ;
 int memset (int ,int ,int) ;
 scalar_t__ palloc (int) ;

IntegerSet *
intset_create(void)
{
 IntegerSet *intset;

 intset = (IntegerSet *) palloc(sizeof(IntegerSet));
 intset->context = CurrentMemoryContext;
 intset->mem_used = GetMemoryChunkSpace(intset);

 intset->num_entries = 0;
 intset->highest_value = 0;

 intset->num_levels = 0;
 intset->root = ((void*)0);
 memset(intset->rightmost_nodes, 0, sizeof(intset->rightmost_nodes));
 intset->leftmost_leaf = ((void*)0);

 intset->num_buffered_values = 0;

 intset->iter_active = 0;
 intset->iter_node = ((void*)0);
 intset->iter_itemno = 0;
 intset->iter_valueno = 0;
 intset->iter_num_values = 0;
 intset->iter_values = ((void*)0);

 return intset;
}
