
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int storeRes_func ;
struct TYPE_9__ {int pointer; } ;
struct TYPE_8__ {scalar_t__ tupstate; scalar_t__ nextOffset; int heapPtr; } ;
struct TYPE_7__ {int heapPtr; } ;
typedef TYPE_1__ SpGistSearchItem ;
typedef int SpGistScanOpaque ;
typedef TYPE_2__* SpGistLeafTuple ;
typedef TYPE_3__* SpGistDeadTuple ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerIsValid (int *) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ SPGIST_DEAD ;
 scalar_t__ SPGIST_LIVE ;
 scalar_t__ SPGIST_METAPAGE_BLKNO ;
 scalar_t__ SPGIST_REDIRECT ;
 scalar_t__ SpGistBreakOffsetNumber ;
 scalar_t__ SpGistErrorOffsetNumber ;
 scalar_t__ SpGistRedirectOffsetNumber ;
 int elog (int ,char*,scalar_t__) ;
 int spgLeafTest (int ,TYPE_1__*,TYPE_2__*,int,int*,int ) ;

__attribute__((used)) static OffsetNumber
spgTestLeafTuple(SpGistScanOpaque so,
     SpGistSearchItem *item,
     Page page, OffsetNumber offset,
     bool isnull, bool isroot,
     bool *reportedSome,
     storeRes_func storeRes)
{
 SpGistLeafTuple leafTuple = (SpGistLeafTuple)
 PageGetItem(page, PageGetItemId(page, offset));

 if (leafTuple->tupstate != SPGIST_LIVE)
 {
  if (!isroot)
  {
   if (leafTuple->tupstate == SPGIST_REDIRECT)
   {

    Assert(offset == ItemPointerGetOffsetNumber(&item->heapPtr));

    item->heapPtr = ((SpGistDeadTuple) leafTuple)->pointer;
    Assert(ItemPointerGetBlockNumber(&item->heapPtr) != SPGIST_METAPAGE_BLKNO);
    return SpGistRedirectOffsetNumber;
   }

   if (leafTuple->tupstate == SPGIST_DEAD)
   {

    Assert(offset == ItemPointerGetOffsetNumber(&item->heapPtr));

    Assert(leafTuple->nextOffset == InvalidOffsetNumber);
    return SpGistBreakOffsetNumber;
   }
  }


  elog(ERROR, "unexpected SPGiST tuple state: %d", leafTuple->tupstate);
  return SpGistErrorOffsetNumber;
 }

 Assert(ItemPointerIsValid(&leafTuple->heapPtr));

 spgLeafTest(so, item, leafTuple, isnull, reportedSome, storeRes);

 return leafTuple->nextOffset;
}
