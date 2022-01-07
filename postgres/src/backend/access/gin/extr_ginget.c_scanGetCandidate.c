
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ firstOffset; scalar_t__ lastOffset; int item; int pendingBuffer; } ;
typedef TYPE_1__ pendingPosition ;
struct TYPE_10__ {scalar_t__ rightlink; } ;
struct TYPE_9__ {int indexRelation; int xs_snapshot; } ;
struct TYPE_8__ {int t_tid; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_2__* IndexTuple ;
typedef TYPE_3__* IndexScanDesc ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BufferGetPage (int ) ;
 scalar_t__ FirstOffsetNumber ;
 int GIN_SHARE ;
 TYPE_6__* GinPageGetOpaque (int ) ;
 scalar_t__ GinPageHasFullRow (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int ItemPointerEquals (int *,int *) ;
 int ItemPointerSetInvalid (int *) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int UnlockReleaseBuffer (int ) ;

__attribute__((used)) static bool
scanGetCandidate(IndexScanDesc scan, pendingPosition *pos)
{
 OffsetNumber maxoff;
 Page page;
 IndexTuple itup;

 ItemPointerSetInvalid(&pos->item);
 for (;;)
 {
  page = BufferGetPage(pos->pendingBuffer);
  TestForOldSnapshot(scan->xs_snapshot, scan->indexRelation, page);

  maxoff = PageGetMaxOffsetNumber(page);
  if (pos->firstOffset > maxoff)
  {
   BlockNumber blkno = GinPageGetOpaque(page)->rightlink;

   if (blkno == InvalidBlockNumber)
   {
    UnlockReleaseBuffer(pos->pendingBuffer);
    pos->pendingBuffer = InvalidBuffer;

    return 0;
   }
   else
   {






    Buffer tmpbuf = ReadBuffer(scan->indexRelation, blkno);

    LockBuffer(tmpbuf, GIN_SHARE);
    UnlockReleaseBuffer(pos->pendingBuffer);

    pos->pendingBuffer = tmpbuf;
    pos->firstOffset = FirstOffsetNumber;
   }
  }
  else
  {
   itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, pos->firstOffset));
   pos->item = itup->t_tid;
   if (GinPageHasFullRow(page))
   {



    for (pos->lastOffset = pos->firstOffset + 1; pos->lastOffset <= maxoff; pos->lastOffset++)
    {
     itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, pos->lastOffset));
     if (!ItemPointerEquals(&pos->item, &itup->t_tid))
      break;
    }
   }
   else
   {



    pos->lastOffset = maxoff + 1;
   }






   break;
  }
 }

 return 1;
}
