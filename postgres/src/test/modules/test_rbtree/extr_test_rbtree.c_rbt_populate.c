
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
 int* GetPermutation (int) ;
 int elog (int ,char*) ;
 int pfree (int*) ;
 int rbt_insert (int *,int *,int*) ;

__attribute__((used)) static void
rbt_populate(RBTree *tree, int size, int step)
{
 int *permutation = GetPermutation(size);
 IntRBTreeNode node;
 bool isNew;
 int i;


 for (i = 0; i < size; i++)
 {
  node.key = step * permutation[i];
  rbt_insert(tree, (RBTNode *) &node, &isNew);
  if (!isNew)
   elog(ERROR, "unexpected !isNew result from rbt_insert");
 }





 if (size > 0)
 {
  node.key = step * permutation[0];
  rbt_insert(tree, (RBTNode *) &node, &isNew);
  if (isNew)
   elog(ERROR, "unexpected isNew result from rbt_insert");
 }

 pfree(permutation);
}
