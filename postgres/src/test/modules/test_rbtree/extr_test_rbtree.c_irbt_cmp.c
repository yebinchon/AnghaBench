
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef int RBTNode ;
typedef TYPE_1__ IntRBTreeNode ;



__attribute__((used)) static int
irbt_cmp(const RBTNode *a, const RBTNode *b, void *arg)
{
 const IntRBTreeNode *ea = (const IntRBTreeNode *) a;
 const IntRBTreeNode *eb = (const IntRBTreeNode *) b;

 return ea->key - eb->key;
}
