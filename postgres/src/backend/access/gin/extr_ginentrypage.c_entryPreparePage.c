
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; scalar_t__ isDelete; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int IndexTuple ;
typedef TYPE_1__ GinBtreeEntryInsertData ;
typedef int GinBtree ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 int GinSetDownlink (int ,scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PageIndexTupleDelete (int ,int ) ;

__attribute__((used)) static void
entryPreparePage(GinBtree btree, Page page, OffsetNumber off,
     GinBtreeEntryInsertData *insertData, BlockNumber updateblkno)
{
 Assert(insertData->entry);
 Assert(!GinPageIsData(page));

 if (insertData->isDelete)
 {
  Assert(GinPageIsLeaf(page));
  PageIndexTupleDelete(page, off);
 }

 if (!GinPageIsLeaf(page) && updateblkno != InvalidBlockNumber)
 {
  IndexTuple itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, off));

  GinSetDownlink(itup, updateblkno);
 }
}
