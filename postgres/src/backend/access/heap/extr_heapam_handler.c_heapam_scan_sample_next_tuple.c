
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int TupleTableSlot ;
struct TYPE_15__ {int (* NextSampleTuple ) (TYPE_3__*,int ,int ) ;} ;
typedef TYPE_1__ TsmRoutine ;
typedef TYPE_2__* TableScanDesc ;
struct TYPE_18__ {int t_self; int t_len; scalar_t__ t_data; } ;
struct TYPE_19__ {int rs_cbuf; TYPE_4__ rs_ctup; int rs_cblock; } ;
struct TYPE_17__ {TYPE_1__* tsmroutine; } ;
struct TYPE_16__ {int rs_flags; int rs_rd; TYPE_13__* rs_snapshot; } ;
struct TYPE_14__ {int takenDuringRecovery; } ;
typedef TYPE_3__ SampleScanState ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* HeapScanDesc ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CheckForSerializableConflictOut (int,int ,TYPE_4__*,int ,TYPE_13__*) ;
 int ExecClearTuple (int *) ;
 int ExecStoreBufferHeapTuple (TYPE_4__*,int *,int ) ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 int ItemPointerSet (int *,int ,int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ OffsetNumberIsValid (int ) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,int ) ;
 int PageGetMaxOffsetNumber (scalar_t__) ;
 scalar_t__ PageIsAllVisible (scalar_t__) ;
 int SO_ALLOW_PAGEMODE ;
 int SampleHeapTupleVisible (TYPE_2__*,int ,TYPE_4__*,int ) ;
 int pgstat_count_heap_getnext (int ) ;
 int stub1 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static bool
heapam_scan_sample_next_tuple(TableScanDesc scan, SampleScanState *scanstate,
         TupleTableSlot *slot)
{
 HeapScanDesc hscan = (HeapScanDesc) scan;
 TsmRoutine *tsm = scanstate->tsmroutine;
 BlockNumber blockno = hscan->rs_cblock;
 bool pagemode = (scan->rs_flags & SO_ALLOW_PAGEMODE) != 0;

 Page page;
 bool all_visible;
 OffsetNumber maxoffset;





 if (!pagemode)
  LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_SHARE);

 page = (Page) BufferGetPage(hscan->rs_cbuf);
 all_visible = PageIsAllVisible(page) &&
  !scan->rs_snapshot->takenDuringRecovery;
 maxoffset = PageGetMaxOffsetNumber(page);

 for (;;)
 {
  OffsetNumber tupoffset;

  CHECK_FOR_INTERRUPTS();


  tupoffset = tsm->NextSampleTuple(scanstate,
           blockno,
           maxoffset);

  if (OffsetNumberIsValid(tupoffset))
  {
   ItemId itemid;
   bool visible;
   HeapTuple tuple = &(hscan->rs_ctup);


   itemid = PageGetItemId(page, tupoffset);
   if (!ItemIdIsNormal(itemid))
    continue;

   tuple->t_data = (HeapTupleHeader) PageGetItem(page, itemid);
   tuple->t_len = ItemIdGetLength(itemid);
   ItemPointerSet(&(tuple->t_self), blockno, tupoffset);


   if (all_visible)
    visible = 1;
   else
    visible = SampleHeapTupleVisible(scan, hscan->rs_cbuf,
             tuple, tupoffset);


   if (!pagemode)
    CheckForSerializableConflictOut(visible, scan->rs_rd, tuple,
            hscan->rs_cbuf, scan->rs_snapshot);


   if (!visible)
    continue;


   if (!pagemode)
    LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

   ExecStoreBufferHeapTuple(tuple, slot, hscan->rs_cbuf);


   pgstat_count_heap_getnext(scan->rs_rd);

   return 1;
  }
  else
  {




   if (!pagemode)
    LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

   ExecClearTuple(slot);
   return 0;
  }
 }

 Assert(0);
}
