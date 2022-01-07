
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_8__ {scalar_t__ first; int codeword; } ;
typedef TYPE_1__ leaf_item ;
struct TYPE_9__ {int level; } ;
typedef TYPE_2__ intset_node ;
struct TYPE_10__ {TYPE_1__* items; int num_items; } ;
typedef TYPE_3__ intset_leaf_node ;
struct TYPE_11__ {scalar_t__* values; scalar_t__ num_items; TYPE_2__** downlinks; } ;
typedef TYPE_4__ intset_internal_node ;
struct TYPE_12__ {scalar_t__ num_buffered_values; scalar_t__* buffered_values; int num_levels; TYPE_2__* root; } ;
typedef TYPE_5__ IntegerSet ;


 int Assert (int) ;
 int intset_binsrch_leaf (scalar_t__,TYPE_1__*,int ,int) ;
 int intset_binsrch_uint64 (scalar_t__,scalar_t__*,scalar_t__,int) ;
 scalar_t__ simple8b_contains (int ,scalar_t__,scalar_t__) ;

bool
intset_is_member(IntegerSet *intset, uint64 x)
{
 intset_node *node;
 intset_leaf_node *leaf;
 int level;
 int itemno;
 leaf_item *item;




 if (intset->num_buffered_values > 0 && x >= intset->buffered_values[0])
 {
  int itemno;

  itemno = intset_binsrch_uint64(x,
            intset->buffered_values,
            intset->num_buffered_values,
            0);
  if (itemno >= intset->num_buffered_values)
   return 0;
  else
   return (intset->buffered_values[itemno] == x);
 }





 if (!intset->root)
  return 0;
 node = intset->root;
 for (level = intset->num_levels - 1; level > 0; level--)
 {
  intset_internal_node *n = (intset_internal_node *) node;

  Assert(node->level == level);

  itemno = intset_binsrch_uint64(x, n->values, n->num_items, 1);
  if (itemno == 0)
   return 0;
  node = n->downlinks[itemno - 1];
 }
 Assert(node->level == 0);
 leaf = (intset_leaf_node *) node;




 itemno = intset_binsrch_leaf(x, leaf->items, leaf->num_items, 1);
 if (itemno == 0)
  return 0;
 item = &leaf->items[itemno - 1];


 if (item->first == x)
  return 1;
 Assert(x > item->first);


 if (simple8b_contains(item->codeword, x, item->first))
  return 1;

 return 0;
}
