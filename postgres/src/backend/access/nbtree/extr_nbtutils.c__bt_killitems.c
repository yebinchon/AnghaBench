
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ lsn; int firstItem; int lastItem; int buf; TYPE_3__* items; int currPage; } ;
struct TYPE_14__ {int btpo_flags; } ;
struct TYPE_13__ {int numKilled; int* killedItems; TYPE_8__ currPos; } ;
struct TYPE_12__ {scalar_t__ indexOffset; int heapTid; } ;
struct TYPE_11__ {int indexRelation; int opaque; } ;
struct TYPE_10__ {int t_tid; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__* IndexScanDesc ;
typedef int Buffer ;
typedef TYPE_3__ BTScanPosItem ;
typedef TYPE_4__* BTScanOpaque ;
typedef TYPE_5__* BTPageOpaque ;


 int Assert (int) ;
 int BTP_HAS_GARBAGE ;
 scalar_t__ BTScanPosIsPinned (TYPE_8__) ;
 int BTScanPosIsValid (TYPE_8__) ;
 int BT_READ ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetLSNAtomic (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int ItemIdMarkDead (int ) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_5__*) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _bt_getbuf (int ,int ,int ) ;
 int _bt_relbuf (int ,int ) ;

void
_bt_killitems(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 Page page;
 BTPageOpaque opaque;
 OffsetNumber minoff;
 OffsetNumber maxoff;
 int i;
 int numKilled = so->numKilled;
 bool killedsomething = 0;

 Assert(BTScanPosIsValid(so->currPos));





 so->numKilled = 0;

 if (BTScanPosIsPinned(so->currPos))
 {






  LockBuffer(so->currPos.buf, BT_READ);

  page = BufferGetPage(so->currPos.buf);
 }
 else
 {
  Buffer buf;


  buf = _bt_getbuf(scan->indexRelation, so->currPos.currPage, BT_READ);


  if (!BufferIsValid(buf))
   return;

  page = BufferGetPage(buf);
  if (BufferGetLSNAtomic(buf) == so->currPos.lsn)
   so->currPos.buf = buf;
  else
  {

   _bt_relbuf(scan->indexRelation, buf);
   return;
  }
 }

 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 minoff = P_FIRSTDATAKEY(opaque);
 maxoff = PageGetMaxOffsetNumber(page);

 for (i = 0; i < numKilled; i++)
 {
  int itemIndex = so->killedItems[i];
  BTScanPosItem *kitem = &so->currPos.items[itemIndex];
  OffsetNumber offnum = kitem->indexOffset;

  Assert(itemIndex >= so->currPos.firstItem &&
      itemIndex <= so->currPos.lastItem);
  if (offnum < minoff)
   continue;
  while (offnum <= maxoff)
  {
   ItemId iid = PageGetItemId(page, offnum);
   IndexTuple ituple = (IndexTuple) PageGetItem(page, iid);

   if (ItemPointerEquals(&ituple->t_tid, &kitem->heapTid))
   {

    ItemIdMarkDead(iid);
    killedsomething = 1;
    break;
   }
   offnum = OffsetNumberNext(offnum);
  }
 }







 if (killedsomething)
 {
  opaque->btpo_flags |= BTP_HAS_GARBAGE;
  MarkBufferDirtyHint(so->currPos.buf, 1);
 }

 LockBuffer(so->currPos.buf, BUFFER_LOCK_UNLOCK);
}
