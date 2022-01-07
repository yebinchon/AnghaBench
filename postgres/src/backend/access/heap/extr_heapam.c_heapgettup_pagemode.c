
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_6__ {int rs_flags; int rs_rd; int rs_snapshot; int * rs_parallel; } ;
struct TYPE_7__ {int * t_data; int t_self; void* t_len; } ;
struct TYPE_8__ {int rs_inited; scalar_t__ rs_nblocks; scalar_t__ rs_numblocks; scalar_t__ rs_startblock; scalar_t__ rs_cblock; int rs_cindex; int rs_ntuples; scalar_t__* rs_vistuples; TYPE_1__ rs_base; int rs_cbuf; TYPE_2__ rs_ctup; } ;
typedef int * ScanKey ;
typedef int ScanDirection ;
typedef int ParallelBlockTableScanDesc ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef void* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* HeapScanDesc ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int HeapKeyTest (TYPE_2__*,int ,int,int *,int) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 void* ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerSet (int *,scalar_t__,scalar_t__) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,scalar_t__) ;
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
heapgettup_pagemode(HeapScanDesc scan,
     ScanDirection dir,
     int nkeys,
     ScanKey key)
{
 HeapTuple tuple = &(scan->rs_ctup);
 bool backward = ScanDirectionIsBackward(dir);
 BlockNumber page;
 bool finished;
 Page dp;
 int lines;
 int lineindex;
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
   lineindex = 0;
   scan->rs_inited = 1;
  }
  else
  {

   page = scan->rs_cblock;
   lineindex = scan->rs_cindex + 1;
  }

  dp = BufferGetPage(scan->rs_cbuf);
  TestForOldSnapshot(scan->rs_base.rs_snapshot, scan->rs_base.rs_rd, dp);
  lines = scan->rs_ntuples;


  linesleft = lines - lineindex;
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

  dp = BufferGetPage(scan->rs_cbuf);
  TestForOldSnapshot(scan->rs_base.rs_snapshot, scan->rs_base.rs_rd, dp);
  lines = scan->rs_ntuples;

  if (!scan->rs_inited)
  {
   lineindex = lines - 1;
   scan->rs_inited = 1;
  }
  else
  {
   lineindex = scan->rs_cindex - 1;
  }


  linesleft = lineindex + 1;
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
  TestForOldSnapshot(scan->rs_base.rs_snapshot, scan->rs_base.rs_rd, dp);
  lineoff = ItemPointerGetOffsetNumber(&(tuple->t_self));
  lpp = PageGetItemId(dp, lineoff);
  Assert(ItemIdIsNormal(lpp));

  tuple->t_data = (HeapTupleHeader) PageGetItem((Page) dp, lpp);
  tuple->t_len = ItemIdGetLength(lpp);


  Assert(scan->rs_cindex < scan->rs_ntuples);
  Assert(lineoff == scan->rs_vistuples[scan->rs_cindex]);

  return;
 }





 for (;;)
 {
  while (linesleft > 0)
  {
   lineoff = scan->rs_vistuples[lineindex];
   lpp = PageGetItemId(dp, lineoff);
   Assert(ItemIdIsNormal(lpp));

   tuple->t_data = (HeapTupleHeader) PageGetItem((Page) dp, lpp);
   tuple->t_len = ItemIdGetLength(lpp);
   ItemPointerSet(&(tuple->t_self), page, lineoff);




   if (key != ((void*)0))
   {
    bool valid;

    HeapKeyTest(tuple, RelationGetDescr(scan->rs_base.rs_rd),
       nkeys, key, valid);
    if (valid)
    {
     scan->rs_cindex = lineindex;
     return;
    }
   }
   else
   {
    scan->rs_cindex = lineindex;
    return;
   }




   --linesleft;
   if (backward)
    --lineindex;
   else
    ++lineindex;
  }





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

  dp = BufferGetPage(scan->rs_cbuf);
  TestForOldSnapshot(scan->rs_base.rs_snapshot, scan->rs_base.rs_rd, dp);
  lines = scan->rs_ntuples;
  linesleft = lines;
  if (backward)
   lineindex = lines - 1;
  else
   lineindex = 0;
 }
}
