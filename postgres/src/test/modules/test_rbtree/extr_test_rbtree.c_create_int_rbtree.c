
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBTree ;
typedef int IntRBTreeNode ;


 int irbt_alloc ;
 int irbt_cmp ;
 int irbt_combine ;
 int irbt_free ;
 int * rbt_create (int,int ,int ,int ,int ,int *) ;

__attribute__((used)) static RBTree *
create_int_rbtree(void)
{
 return rbt_create(sizeof(IntRBTreeNode),
       irbt_cmp,
       irbt_combine,
       irbt_alloc,
       irbt_free,
       ((void*)0));
}
