
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {int btpo_next; } ;
struct TYPE_11__ {int moreRight; int firstItem; int lastItem; int itemIndex; int moreLeft; scalar_t__ nextTupleOffset; int nextPage; int buf; int lsn; int currPage; } ;
struct TYPE_13__ {TYPE_10__ currPos; } ;
struct TYPE_12__ {scalar_t__ ignore_killed_tuples; int indexRelation; scalar_t__ parallel_scan; int opaque; } ;
typedef int ScanDirection ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BTScanOpaque ;
typedef TYPE_3__* BTPageOpaque ;


 int Assert (int) ;
 int BTScanPosIsPinned (TYPE_10__) ;
 int BTreeTupleGetNAtts (scalar_t__,int ) ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetLSNAtomic (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int IndexRelationGetNumberOfAttributes (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 scalar_t__ Max (scalar_t__,scalar_t__) ;
 int MaxIndexTuplesPerPage ;
 scalar_t__ Min (scalar_t__,scalar_t__) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ OffsetNumberPrev (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_3__*) ;
 scalar_t__ P_HIKEY ;
 int P_RIGHTMOST (TYPE_3__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int _bt_checkkeys (TYPE_1__*,scalar_t__,int,int ,int*) ;
 int _bt_parallel_release (TYPE_1__*,int ) ;
 int _bt_saveitem (TYPE_2__*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
_bt_readpage(IndexScanDesc scan, ScanDirection dir, OffsetNumber offnum)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 Page page;
 BTPageOpaque opaque;
 OffsetNumber minoff;
 OffsetNumber maxoff;
 int itemIndex;
 bool continuescan;
 int indnatts;





 Assert(BufferIsValid(so->currPos.buf));

 page = BufferGetPage(so->currPos.buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);


 if (scan->parallel_scan)
 {
  if (ScanDirectionIsForward(dir))
   _bt_parallel_release(scan, opaque->btpo_next);
  else
   _bt_parallel_release(scan, BufferGetBlockNumber(so->currPos.buf));
 }

 continuescan = 1;
 indnatts = IndexRelationGetNumberOfAttributes(scan->indexRelation);
 minoff = P_FIRSTDATAKEY(opaque);
 maxoff = PageGetMaxOffsetNumber(page);





 so->currPos.currPage = BufferGetBlockNumber(so->currPos.buf);






 so->currPos.lsn = BufferGetLSNAtomic(so->currPos.buf);






 so->currPos.nextPage = opaque->btpo_next;


 so->currPos.nextTupleOffset = 0;





 Assert(BTScanPosIsPinned(so->currPos));

 if (ScanDirectionIsForward(dir))
 {

  itemIndex = 0;

  offnum = Max(offnum, minoff);

  while (offnum <= maxoff)
  {
   ItemId iid = PageGetItemId(page, offnum);
   IndexTuple itup;





   if (scan->ignore_killed_tuples && ItemIdIsDead(iid))
   {
    offnum = OffsetNumberNext(offnum);
    continue;
   }

   itup = (IndexTuple) PageGetItem(page, iid);

   if (_bt_checkkeys(scan, itup, indnatts, dir, &continuescan))
   {

    _bt_saveitem(so, itemIndex, offnum, itup);
    itemIndex++;
   }

   if (!continuescan)
    break;

   offnum = OffsetNumberNext(offnum);
  }
  if (continuescan && !P_RIGHTMOST(opaque))
  {
   ItemId iid = PageGetItemId(page, P_HIKEY);
   IndexTuple itup = (IndexTuple) PageGetItem(page, iid);
   int truncatt;

   truncatt = BTreeTupleGetNAtts(itup, scan->indexRelation);
   _bt_checkkeys(scan, itup, truncatt, dir, &continuescan);
  }

  if (!continuescan)
   so->currPos.moreRight = 0;

  Assert(itemIndex <= MaxIndexTuplesPerPage);
  so->currPos.firstItem = 0;
  so->currPos.lastItem = itemIndex - 1;
  so->currPos.itemIndex = 0;
 }
 else
 {

  itemIndex = MaxIndexTuplesPerPage;

  offnum = Min(offnum, maxoff);

  while (offnum >= minoff)
  {
   ItemId iid = PageGetItemId(page, offnum);
   IndexTuple itup;
   bool tuple_alive;
   bool passes_quals;
   if (scan->ignore_killed_tuples && ItemIdIsDead(iid))
   {
    Assert(offnum >= P_FIRSTDATAKEY(opaque));
    if (offnum > P_FIRSTDATAKEY(opaque))
    {
     offnum = OffsetNumberPrev(offnum);
     continue;
    }

    tuple_alive = 0;
   }
   else
    tuple_alive = 1;

   itup = (IndexTuple) PageGetItem(page, iid);

   passes_quals = _bt_checkkeys(scan, itup, indnatts, dir,
           &continuescan);
   if (passes_quals && tuple_alive)
   {

    itemIndex--;
    _bt_saveitem(so, itemIndex, offnum, itup);
   }
   if (!continuescan)
   {

    so->currPos.moreLeft = 0;
    break;
   }

   offnum = OffsetNumberPrev(offnum);
  }

  Assert(itemIndex >= 0);
  so->currPos.firstItem = itemIndex;
  so->currPos.lastItem = MaxIndexTuplesPerPage - 1;
  so->currPos.itemIndex = MaxIndexTuplesPerPage - 1;
 }

 return (so->currPos.firstItem <= so->currPos.lastItem);
}
