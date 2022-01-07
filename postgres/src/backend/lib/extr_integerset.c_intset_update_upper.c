
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* uint64 ;
struct TYPE_11__ {scalar_t__ level; } ;
typedef TYPE_2__ intset_node ;
struct TYPE_12__ {TYPE_1__* items; } ;
typedef TYPE_3__ intset_leaf_node ;
struct TYPE_13__ {int level; int num_items; TYPE_2__** downlinks; void** values; } ;
typedef TYPE_4__ intset_internal_node ;
struct TYPE_14__ {int num_levels; TYPE_2__** rightmost_nodes; TYPE_2__* root; } ;
struct TYPE_10__ {void* first; } ;
typedef TYPE_5__ IntegerSet ;


 int Assert (int) ;
 int ERROR ;
 int MAX_INTERNAL_ITEMS ;
 int MAX_TREE_LEVELS ;
 int elog (int ,char*) ;
 TYPE_4__* intset_new_internal_node (TYPE_5__*) ;

__attribute__((used)) static void
intset_update_upper(IntegerSet *intset, int level, intset_node *child,
     uint64 child_key)
{
 intset_internal_node *parent;

 Assert(level > 0);




 if (level >= intset->num_levels)
 {
  intset_node *oldroot = intset->root;
  uint64 downlink_key;


  if (intset->num_levels == MAX_TREE_LEVELS)
   elog(ERROR, "could not expand integer set, maximum number of levels reached");
  intset->num_levels++;





  if (intset->root->level == 0)
   downlink_key = ((intset_leaf_node *) oldroot)->items[0].first;
  else
   downlink_key = ((intset_internal_node *) oldroot)->values[0];

  parent = intset_new_internal_node(intset);
  parent->level = level;
  parent->values[0] = downlink_key;
  parent->downlinks[0] = oldroot;
  parent->num_items = 1;

  intset->root = (intset_node *) parent;
  intset->rightmost_nodes[level] = (intset_node *) parent;
 }




 parent = (intset_internal_node *) intset->rightmost_nodes[level];

 if (parent->num_items < MAX_INTERNAL_ITEMS)
 {
  parent->values[parent->num_items] = child_key;
  parent->downlinks[parent->num_items] = child;
  parent->num_items++;
 }
 else
 {





  parent = intset_new_internal_node(intset);
  parent->level = level;
  parent->values[0] = child_key;
  parent->downlinks[0] = child;
  parent->num_items = 1;

  intset->rightmost_nodes[level] = (intset_node *) parent;

  intset_update_upper(intset, level + 1, (intset_node *) parent, child_key);
 }
}
