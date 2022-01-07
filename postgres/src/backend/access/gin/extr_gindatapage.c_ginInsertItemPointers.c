
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_8__ {int itemptr; int isBuild; } ;
struct TYPE_7__ {size_t nitem; size_t curitem; int * items; } ;
typedef int Relation ;
typedef int ItemPointerData ;
typedef int GinStatsData ;
typedef int GinBtreeStack ;
typedef TYPE_1__ GinBtreeDataLeafInsertData ;
typedef TYPE_2__ GinBtreeData ;
typedef int BlockNumber ;


 int * ginFindLeafPage (TYPE_2__*,int,int,int *) ;
 int ginInsertValue (TYPE_2__*,int *,TYPE_1__*,int *) ;
 int ginPrepareDataScan (TYPE_2__*,int ,int ) ;

void
ginInsertItemPointers(Relation index, BlockNumber rootBlkno,
       ItemPointerData *items, uint32 nitem,
       GinStatsData *buildStats)
{
 GinBtreeData btree;
 GinBtreeDataLeafInsertData insertdata;
 GinBtreeStack *stack;

 ginPrepareDataScan(&btree, index, rootBlkno);
 btree.isBuild = (buildStats != ((void*)0));
 insertdata.items = items;
 insertdata.nitem = nitem;
 insertdata.curitem = 0;

 while (insertdata.curitem < insertdata.nitem)
 {

  btree.itemptr = insertdata.items[insertdata.curitem];
  stack = ginFindLeafPage(&btree, 0, 1, ((void*)0));

  ginInsertValue(&btree, stack, &insertdata, buildStats);
 }
}
