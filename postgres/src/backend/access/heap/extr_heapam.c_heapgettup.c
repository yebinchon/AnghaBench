
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_8__ {int rs_flags; int rs_rd; int * rs_parallel; int rs_snapshot; } ;
struct TYPE_9__ {int * t_data; int t_self; void* t_len; } ;
struct TYPE_10__ {int rs_inited; scalar_t__ rs_nblocks; scalar_t__ rs_numblocks; scalar_t__ rs_startblock; scalar_t__ rs_cblock; TYPE_1__ rs_base; int rs_cbuf; TYPE_2__ rs_ctup; } ;
typedef int Snapshot ;
typedef int * ScanKey ;
typedef int ScanDirection ;
typedef int ParallelBlockTableScanDesc ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef scalar_t__ ItemId ;
typedef void* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* HeapScanDesc ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CheckForSerializableConflictOut (int,int ,TYPE_2__*,int ,int ) ;
 int FirstOffsetNumber ;
 int HeapKeyTest (TYPE_2__*,int ,int,int *,int) ;
 int HeapTupleSatisfiesVisibility (TYPE_2__*,int ,int ) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 void* ItemIdGetLength (scalar_t__) ;
 int ItemIdIsNormal (scalar_t__) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerSet (int *,scalar_t__,int) ;
 int LockBuffer (int ,int ) ;
 int OffsetNumberNext (int) ;
 int OffsetNumberPrev (int) ;
 scalar_t__ PageGetItem (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetItemId (scalar_t__,int) ;
 int PageGetMaxOffsetNumber (scalar_t__) ;
 int RelationGetDescr (int ) ;
 int ReleaseBuffer (int ) ;
 int SO_ALLOW_SYNC ;
 int ScanDirectionIsBackward (int ) ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int TestForOldSnapshot (int ,int ,scalar_t__) ;
 int heapgetpage (int ,scalar_t__) ;
 int ss_report_location (int ,scalar_t__) ;
 scalar_t__ table_block_parallelscan_nextpage (int ,int ) ;
 int table_block_parallelscan_startblock_init (int ,int ) ;

__attribute__((used)) static void
heapgettup(HeapScanDesc scan,
     ScanDirection dir,
     int nkeys,
     ScanKey key)
{
 HeapTuple tuple = &(scan->rs_ctup);
 Snapshot snapshot = scan->rs_base.rs_snapshot;
 bool backward = ScanDirectionIsBackward(dir);
 BlockNumber page;
 bool finished;
 Page dp;
 int lines;
 OffsetNumber lineoff;
 int linesleft;
 ItemId lpp;




 if (ScanDirectionIsForward(dir))
 {
  if (!scan->rs_inited)
  {



   if (scan->rs_nblocks == 0 || scan->rs_numblocks == 0)
   {
    Assert(!BufferIsValid(scan->rs_cbuf));
    tuple->t_data = ((void*)0);
    return;
   }
   if (scan->rs_base.rs_parallel != ((void*)0))
   {
    ParallelBlockTableScanDesc pbscan =
    (ParallelBlockTableScanDesc) scan->rs_base.rs_parallel;

    table_block_parallelscan_startblock_init(scan->rs_base.rs_rd,
               pbscan);

    page = table_block_parallelscan_nextpage(scan->rs_base.rs_rd,
               pbscan);


    if (page == InvalidBlockNumber)
    {
     Assert(!BufferIsValid(scan->rs_cbuf));
     tuple->t_data = ((void*)0);
     return;
    }
   }
   else
    page = scan->rs_startblock;
   heapgetpage((TableScanDesc) scan, page);
   lineoff = FirstOffsetNumber;
   scan->rs_inited = 1;
  }
  else
  {

   page = scan->rs_cblock;
   lineoff =
    OffsetNumberNext(ItemPointerGetOffsetNumber(&(tuple->t_self)));
  }

  LockBuffer(scan->rs_cbuf, BUFFER_LOCK_SHARE);

  dp = BufferGetPage(scan->rs_cbuf);
  TestForOldSnapshot(snapshot, scan->rs_base.rs_rd, dp);
  lines = PageGetMaxOffsetNumber(dp);


  linesleft = lines - lineoff + 1;
 }
 else if (backward)
 {

  Assert(scan->rs_base.rs_parallel == ((void*)0));

  if (!scan->rs_inited)
  {



   if (scan->rs_nblocks == 0 || scan->rs_numblocks == 0)
   {
    Assert(!BufferIsValid(scan->rs_cbuf));
    tuple->t_data = ((void*)0);
    return;
   }







   scan->rs_base.rs_flags &= ~SO_ALLOW_SYNC;

   if (scan->rs_startblock > 0)
    page = scan->rs_startblock - 1;
   else
    page = scan->rs_nblocks - 1;
   heapgetpage((TableScanDesc) scan, page);
  }
  else
  {

   page = scan->rs_cblock;
  }

  LockBuffer(scan->rs_cbuf, BUFFER_LOCK_SHARE);

  dp = BufferGetPage(scan->rs_cbuf);
  TestForOldSnapshot(snapshot, scan->rs_base.rs_rd, dp);
  lines = PageGetMaxOffsetNumber(dp);

  if (!scan->rs_inited)
  {
   lineoff = lines;
   scan->rs_inited = 1;
  }
  else
  {
   lineoff =
    OffsetNumberPrev(ItemPointerGetOffsetNumber(&(tuple->t_self)));
  }


  linesleft = lineoff;
 }
 else
 {



  if (!scan->rs_inited)
  {
   Assert(!BufferIsValid(scan->rs_cbuf));
   tuple->t_data = ((void*)0);
   return;
  }

  page = ItemPointerGetBlockNumber(&(tuple->t_self));
  if (page != scan->rs_cblock)
   heapgetpage((TableScanDesc) scan, page);


  dp = BufferGetPage(scan->rs_cbuf);
  TestForOldSnapshot(snapshot, scan->rs_base.rs_rd, dp);
  lineoff = ItemPointerGetOffsetNumber(&(tuple->t_self));
  lpp = PageGetItemId(dp, lineoff);
  Assert(ItemIdIsNormal(lpp));

  tuple->t_data = (HeapTupleHeader) PageGetItem((Page) dp, lpp);
  tuple->t_len = ItemIdGetLength(lpp);

  return;
 }





 lpp = PageGetItemId(dp, lineoff);
 for (;;)
 {
  while (linesleft > 0)
  {
   if (ItemIdIsNormal(lpp))
   {
    bool valid;

    tuple->t_data = (HeapTupleHeader) PageGetItem((Page) dp, lpp);
    tuple->t_len = ItemIdGetLength(lpp);
    ItemPointerSet(&(tuple->t_self), page, lineoff);




    valid = HeapTupleSatisfiesVisibility(tuple,
              snapshot,
              scan->rs_cbuf);

    CheckForSerializableConflictOut(valid, scan->rs_base.rs_rd,
            tuple, scan->rs_cbuf,
            snapshot);

    if (valid && key != ((void*)0))
     HeapKeyTest(tuple, RelationGetDescr(scan->rs_base.rs_rd),
        nkeys, key, valid);

    if (valid)
    {
     LockBuffer(scan->rs_cbuf, BUFFER_LOCK_UNLOCK);
     return;
    }
   }




   --linesleft;
   if (backward)
   {
    --lpp;
    --lineoff;
   }
   else
   {
    ++lpp;
    ++lineoff;
   }
  }





  LockBuffer(scan->rs_cbuf, BUFFER_LOCK_UNLOCK);




  if (backward)
  {
   finished = (page == scan->rs_startblock) ||
    (scan->rs_numblocks != InvalidBlockNumber ? --scan->rs_numblocks == 0 : 0);
   if (page == 0)
    page = scan->rs_nblocks;
   page--;
  }
  else if (scan->rs_base.rs_parallel != ((void*)0))
  {
   ParallelBlockTableScanDesc pbscan =
   (ParallelBlockTableScanDesc) scan->rs_base.rs_parallel;

   page = table_block_parallelscan_nextpage(scan->rs_base.rs_rd,
              pbscan);
   finished = (page == InvalidBlockNumber);
  }
  else
  {
   page++;
   if (page >= scan->rs_nblocks)
    page = 0;
   finished = (page == scan->rs_startblock) ||
    (scan->rs_numblocks != InvalidBlockNumber ? --scan->rs_numblocks == 0 : 0);
   if (scan->rs_base.rs_flags & SO_ALLOW_SYNC)
    ss_report_location(scan->rs_base.rs_rd, page);
  }




  if (finished)
  {
   if (BufferIsValid(scan->rs_cbuf))
    ReleaseBuffer(scan->rs_cbuf);
   scan->rs_cbuf = InvalidBuffer;
   scan->rs_cblock = InvalidBlockNumber;
   tuple->t_data = ((void*)0);
   scan->rs_inited = 0;
   return;
  }

  heapgetpage((TableScanDesc) scan, page);

  LockBuffer(scan->rs_cbuf, BUFFER_LOCK_SHARE);

  dp = BufferGetPage(scan->rs_cbuf);
  TestForOldSnapshot(snapshot, scan->rs_base.rs_rd, dp);
  lines = PageGetMaxOffsetNumber((Page) dp);
  linesleft = lines;
  if (backward)
  {
   lineoff = lines;
   lpp = PageGetItemId(dp, lines);
  }
  else
  {
   lineoff = FirstOffsetNumber;
   lpp = PageGetItemId(dp, FirstOffsetNumber);
  }
 }
}
