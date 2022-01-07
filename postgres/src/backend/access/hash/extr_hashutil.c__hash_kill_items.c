
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ buf; int firstItem; int lastItem; TYPE_3__* items; int currPage; } ;
struct TYPE_13__ {int hasho_flag; } ;
struct TYPE_12__ {int numKilled; int* killedItems; scalar_t__ hashso_bucket_buf; TYPE_7__ currPos; } ;
struct TYPE_11__ {int heapTid; int indexOffset; } ;
struct TYPE_10__ {int indexRelation; int opaque; } ;
struct TYPE_9__ {int t_tid; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__ HashScanPosItem ;
typedef TYPE_4__* HashScanOpaque ;
typedef TYPE_5__* HashPageOpaque ;
typedef scalar_t__ Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (scalar_t__) ;
 int HASH_READ ;
 scalar_t__ HashScanPosIsPinned (TYPE_7__) ;
 int HashScanPosIsValid (TYPE_7__) ;
 int ItemIdMarkDead (int ) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 int LH_OVERFLOW_PAGE ;
 int LH_PAGE_HAS_DEAD_TUPLES ;
 int LockBuffer (scalar_t__,int ) ;
 int MarkBufferDirtyHint (scalar_t__,int) ;
 int OffsetNumberNext (int ) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 scalar_t__ _hash_getbuf (int ,int ,int ,int ) ;
 int _hash_relbuf (int ,scalar_t__) ;

void
_hash_kill_items(IndexScanDesc scan)
{
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 Relation rel = scan->indexRelation;
 BlockNumber blkno;
 Buffer buf;
 Page page;
 HashPageOpaque opaque;
 OffsetNumber offnum,
    maxoff;
 int numKilled = so->numKilled;
 int i;
 bool killedsomething = 0;
 bool havePin = 0;

 Assert(so->numKilled > 0);
 Assert(so->killedItems != ((void*)0));
 Assert(HashScanPosIsValid(so->currPos));





 so->numKilled = 0;

 blkno = so->currPos.currPage;
 if (HashScanPosIsPinned(so->currPos))
 {




  havePin = 1;
  buf = so->currPos.buf;
  LockBuffer(buf, BUFFER_LOCK_SHARE);
 }
 else
  buf = _hash_getbuf(rel, blkno, HASH_READ, LH_OVERFLOW_PAGE);

 page = BufferGetPage(buf);
 opaque = (HashPageOpaque) PageGetSpecialPointer(page);
 maxoff = PageGetMaxOffsetNumber(page);

 for (i = 0; i < numKilled; i++)
 {
  int itemIndex = so->killedItems[i];
  HashScanPosItem *currItem = &so->currPos.items[itemIndex];

  offnum = currItem->indexOffset;

  Assert(itemIndex >= so->currPos.firstItem &&
      itemIndex <= so->currPos.lastItem);

  while (offnum <= maxoff)
  {
   ItemId iid = PageGetItemId(page, offnum);
   IndexTuple ituple = (IndexTuple) PageGetItem(page, iid);

   if (ItemPointerEquals(&ituple->t_tid, &currItem->heapTid))
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
  opaque->hasho_flag |= LH_PAGE_HAS_DEAD_TUPLES;
  MarkBufferDirtyHint(buf, 1);
 }

 if (so->hashso_bucket_buf == so->currPos.buf ||
  havePin)
  LockBuffer(so->currPos.buf, BUFFER_LOCK_UNLOCK);
 else
  _hash_relbuf(rel, buf);
}
