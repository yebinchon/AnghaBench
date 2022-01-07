
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef int RBTree ;
typedef int RBTNode ;
typedef TYPE_1__ IntRBTreeNode ;


 int ERROR ;
 int * create_int_rbtree () ;
 int elog (int ,char*) ;
 scalar_t__ rbt_find (int *,int *) ;
 int rbt_populate (int *,int,int) ;

__attribute__((used)) static void
testfind(int size)
{
 RBTree *tree = create_int_rbtree();
 int i;


 rbt_populate(tree, size, 2);


 for (i = 0; i < size; i++)
 {
  IntRBTreeNode node;
  IntRBTreeNode *resultNode;

  node.key = 2 * i;
  resultNode = (IntRBTreeNode *) rbt_find(tree, (RBTNode *) &node);
  if (resultNode == ((void*)0))
   elog(ERROR, "inserted element was not found");
  if (node.key != resultNode->key)
   elog(ERROR, "find operation in rbtree gave wrong result");
 }





 for (i = -1; i <= 2 * size; i += 2)
 {
  IntRBTreeNode node;
  IntRBTreeNode *resultNode;

  node.key = i;
  resultNode = (IntRBTreeNode *) rbt_find(tree, (RBTNode *) &node);
  if (resultNode != ((void*)0))
   elog(ERROR, "not-inserted element was found");
 }
}
