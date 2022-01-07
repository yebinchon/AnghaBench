
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_8__ {int first; int codeword; } ;
typedef TYPE_1__ leaf_item ;
typedef int intset_node ;
struct TYPE_9__ {scalar_t__ num_items; TYPE_1__* items; struct TYPE_9__* next; } ;
typedef TYPE_2__ intset_leaf_node ;
struct TYPE_10__ {int* buffered_values; int num_buffered_values; int num_levels; int ** rightmost_nodes; TYPE_2__* leftmost_leaf; int * root; } ;
typedef TYPE_3__ IntegerSet ;


 scalar_t__ MAX_LEAF_ITEMS ;
 int MAX_VALUES_PER_LEAF_ITEM ;
 TYPE_2__* intset_new_leaf_node (TYPE_3__*) ;
 int intset_update_upper (TYPE_3__*,int,int *,int) ;
 int memmove (int*,int*,int) ;
 int simple8b_encode (int*,int*,int) ;

__attribute__((used)) static void
intset_flush_buffered_values(IntegerSet *intset)
{
 uint64 *values = intset->buffered_values;
 uint64 num_values = intset->num_buffered_values;
 int num_packed = 0;
 intset_leaf_node *leaf;

 leaf = (intset_leaf_node *) intset->rightmost_nodes[0];





 if (leaf == ((void*)0))
 {





  leaf = intset_new_leaf_node(intset);

  intset->root = (intset_node *) leaf;
  intset->leftmost_leaf = leaf;
  intset->rightmost_nodes[0] = (intset_node *) leaf;
  intset->num_levels = 1;
 }







 while (num_values - num_packed >= MAX_VALUES_PER_LEAF_ITEM)
 {
  leaf_item item;
  int num_encoded;





  item.first = values[num_packed];
  item.codeword = simple8b_encode(&values[num_packed + 1],
          &num_encoded,
          item.first);





  if (leaf->num_items >= MAX_LEAF_ITEMS)
  {

   intset_leaf_node *old_leaf = leaf;

   leaf = intset_new_leaf_node(intset);
   old_leaf->next = leaf;
   intset->rightmost_nodes[0] = (intset_node *) leaf;
   intset_update_upper(intset, 1, (intset_node *) leaf, item.first);
  }
  leaf->items[leaf->num_items++] = item;

  num_packed += 1 + num_encoded;
 }




 if (num_packed < intset->num_buffered_values)
 {
  memmove(&intset->buffered_values[0],
    &intset->buffered_values[num_packed],
    (intset->num_buffered_values - num_packed) * sizeof(uint64));
 }
 intset->num_buffered_values -= num_packed;
}
