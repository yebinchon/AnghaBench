
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fullScan; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int GinBtreeStack ;
typedef TYPE_1__* GinBtree ;
typedef int BlockNumber ;


 int * ginFindLeafPage (TYPE_1__*,int,int,int ) ;
 int ginPrepareDataScan (TYPE_1__*,int ,int ) ;

GinBtreeStack *
ginScanBeginPostingTree(GinBtree btree, Relation index, BlockNumber rootBlkno,
      Snapshot snapshot)
{
 GinBtreeStack *stack;

 ginPrepareDataScan(btree, index, rootBlkno);

 btree->fullScan = 1;

 stack = ginFindLeafPage(btree, 1, 0, snapshot);

 return stack;
}
