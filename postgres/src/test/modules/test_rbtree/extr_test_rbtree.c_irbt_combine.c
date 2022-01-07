
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key; } ;
typedef int RBTNode ;
typedef TYPE_1__ IntRBTreeNode ;


 int ERROR ;
 int elog (int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
irbt_combine(RBTNode *existing, const RBTNode *newdata, void *arg)
{
 const IntRBTreeNode *eexist = (const IntRBTreeNode *) existing;
 const IntRBTreeNode *enew = (const IntRBTreeNode *) newdata;

 if (eexist->key != enew->key)
  elog(ERROR, "red-black tree combines %d into %d",
    enew->key, eexist->key);
}
