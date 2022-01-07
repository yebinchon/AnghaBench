
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key; } ;
typedef int RBTree ;
typedef TYPE_1__ IntRBTreeNode ;


 int ERROR ;
 int * create_int_rbtree () ;
 int elog (int ,char*) ;
 int * rbt_leftmost (int *) ;
 int rbt_populate (int *,int,int) ;

__attribute__((used)) static void
testleftmost(int size)
{
 RBTree *tree = create_int_rbtree();
 IntRBTreeNode *result;


 if (rbt_leftmost(tree) != ((void*)0))
  elog(ERROR, "leftmost node of empty tree is not NULL");


 rbt_populate(tree, size, 1);


 result = (IntRBTreeNode *) rbt_leftmost(tree);
 if (result == ((void*)0) || result->key != 0)
  elog(ERROR, "rbt_leftmost gave wrong result");
}
