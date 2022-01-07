
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBTNode ;
typedef int IntRBTreeNode ;


 scalar_t__ palloc (int) ;

__attribute__((used)) static RBTNode *
irbt_alloc(void *arg)
{
 return (RBTNode *) palloc(sizeof(IntRBTreeNode));
}
