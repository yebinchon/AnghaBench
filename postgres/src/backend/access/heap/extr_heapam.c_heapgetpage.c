
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_10__ {int rs_flags; int rs_rd; TYPE_2__* rs_snapshot; } ;
struct TYPE_13__ {scalar_t__ rs_nblocks; int* rs_vistuples; int rs_ntuples; TYPE_1__ rs_base; int rs_cbuf; scalar_t__ rs_cblock; int rs_strategy; } ;
struct TYPE_12__ {int t_self; int t_len; scalar_t__ t_data; int t_tableOid; } ;
struct TYPE_11__ {int takenDuringRecovery; } ;
typedef TYPE_2__* Snapshot ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_3__ HeapTupleData ;
typedef TYPE_4__* HeapScanDesc ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CheckForSerializableConflictOut (int,int ,TYPE_3__*,int ,TYPE_2__*) ;
 int FirstOffsetNumber ;
 int HeapTupleSatisfiesVisibility (TYPE_3__*,TYPE_2__*,int ) ;
 int InvalidBuffer ;
 int ItemIdGetLength (int ) ;
 scalar_t__ ItemIdIsNormal (int ) ;
 int ItemPointerSet (int *,scalar_t__,int) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int MaxHeapTuplesPerPage ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,int) ;
 int PageGetMaxOffsetNumber (scalar_t__) ;
 scalar_t__ PageIsAllVisible (scalar_t__) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseBuffer (int ) ;
 int SO_ALLOW_PAGEMODE ;
 int TestForOldSnapshot (TYPE_2__*,int ,scalar_t__) ;
 int heap_page_prune_opt (int ,int ) ;

void
heapgetpage(TableScanDesc sscan, BlockNumber page)
{
 HeapScanDesc scan = (HeapScanDesc) sscan;
 Buffer buffer;
 Snapshot snapshot;
 Page dp;
 int lines;
 int ntup;
 OffsetNumber lineoff;
 ItemId lpp;
 bool all_visible;

 Assert(page < scan->rs_nblocks);


 if (BufferIsValid(scan->rs_cbuf))
 {
  ReleaseBuffer(scan->rs_cbuf);
  scan->rs_cbuf = InvalidBuffer;
 }






 CHECK_FOR_INTERRUPTS();


 scan->rs_cbuf = ReadBufferExtended(scan->rs_base.rs_rd, MAIN_FORKNUM, page,
            RBM_NORMAL, scan->rs_strategy);
 scan->rs_cblock = page;

 if (!(scan->rs_base.rs_flags & SO_ALLOW_PAGEMODE))
  return;

 buffer = scan->rs_cbuf;
 snapshot = scan->rs_base.rs_snapshot;




 heap_page_prune_opt(scan->rs_base.rs_rd, buffer);






 LockBuffer(buffer, BUFFER_LOCK_SHARE);

 dp = BufferGetPage(buffer);
 TestForOldSnapshot(snapshot, scan->rs_base.rs_rd, dp);
 lines = PageGetMaxOffsetNumber(dp);
 ntup = 0;
 all_visible = PageIsAllVisible(dp) && !snapshot->takenDuringRecovery;

 for (lineoff = FirstOffsetNumber, lpp = PageGetItemId(dp, lineoff);
   lineoff <= lines;
   lineoff++, lpp++)
 {
  if (ItemIdIsNormal(lpp))
  {
   HeapTupleData loctup;
   bool valid;

   loctup.t_tableOid = RelationGetRelid(scan->rs_base.rs_rd);
   loctup.t_data = (HeapTupleHeader) PageGetItem((Page) dp, lpp);
   loctup.t_len = ItemIdGetLength(lpp);
   ItemPointerSet(&(loctup.t_self), page, lineoff);

   if (all_visible)
    valid = 1;
   else
    valid = HeapTupleSatisfiesVisibility(&loctup, snapshot, buffer);

   CheckForSerializableConflictOut(valid, scan->rs_base.rs_rd,
           &loctup, buffer, snapshot);

   if (valid)
    scan->rs_vistuples[ntup++] = lineoff;
  }
 }

 LockBuffer(buffer, BUFFER_LOCK_UNLOCK);

 Assert(ntup <= MaxHeapTuplesPerPage);
 scan->rs_ntuples = ntup;
}
