
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef int RBTreeIterator ;
typedef int RBTree ;
typedef TYPE_1__ IntRBTreeNode ;


 int ERROR ;
 int LeftRightWalk ;
 int * create_int_rbtree () ;
 int elog (int ,char*) ;
 int rbt_begin_iterate (int *,int ,int *) ;
 int * rbt_iterate (int *) ;
 int rbt_populate (int *,int,int) ;

__attribute__((used)) static void
testleftright(int size)
{
 RBTree *tree = create_int_rbtree();
 IntRBTreeNode *node;
 RBTreeIterator iter;
 int lastKey = -1;
 int count = 0;


 rbt_begin_iterate(tree, LeftRightWalk, &iter);
 if (rbt_iterate(&iter) != ((void*)0))
  elog(ERROR, "left-right walk over empty tree produced an element");


 rbt_populate(tree, size, 1);


 rbt_begin_iterate(tree, LeftRightWalk, &iter);

 while ((node = (IntRBTreeNode *) rbt_iterate(&iter)) != ((void*)0))
 {

  if (node->key <= lastKey)
   elog(ERROR, "left-right walk gives elements not in sorted order");
  lastKey = node->key;
  count++;
 }

 if (lastKey != size - 1)
  elog(ERROR, "left-right walk did not reach end");
 if (count != size)
  elog(ERROR, "left-right walk missed some elements");
}
