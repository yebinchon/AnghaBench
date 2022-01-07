
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; scalar_t__ isDelete; } ;
typedef scalar_t__ Size ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemIdData ;
typedef int IndexTuple ;
typedef TYPE_1__ GinBtreeEntryInsertData ;
typedef int GinBtree ;
typedef int Buffer ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int GinPageIsData (int ) ;
 int IndexTupleSize (int) ;
 scalar_t__ MAXALIGN (int ) ;
 scalar_t__ PageGetFreeSpace (int ) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;

__attribute__((used)) static bool
entryIsEnoughSpace(GinBtree btree, Buffer buf, OffsetNumber off,
       GinBtreeEntryInsertData *insertData)
{
 Size releasedsz = 0;
 Size addedsz;
 Page page = BufferGetPage(buf);

 Assert(insertData->entry);
 Assert(!GinPageIsData(page));

 if (insertData->isDelete)
 {
  IndexTuple itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, off));

  releasedsz = MAXALIGN(IndexTupleSize(itup)) + sizeof(ItemIdData);
 }

 addedsz = MAXALIGN(IndexTupleSize(insertData->entry)) + sizeof(ItemIdData);

 if (PageGetFreeSpace(page) + releasedsz >= addedsz)
  return 1;

 return 0;
}
