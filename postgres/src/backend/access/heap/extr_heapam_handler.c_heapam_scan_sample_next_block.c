
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ (* NextSampleBlock ) (TYPE_3__*,scalar_t__) ;} ;
typedef TYPE_1__ TsmRoutine ;
typedef TYPE_2__* TableScanDesc ;
struct TYPE_12__ {scalar_t__ rs_nblocks; scalar_t__ rs_cblock; int rs_inited; scalar_t__ rs_startblock; int rs_cbuf; } ;
struct TYPE_11__ {TYPE_1__* tsmroutine; } ;
struct TYPE_10__ {int rs_flags; int rs_rd; } ;
typedef TYPE_3__ SampleScanState ;
typedef TYPE_4__* HeapScanDesc ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BlockNumberIsValid (scalar_t__) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int ReleaseBuffer (int ) ;
 int SO_ALLOW_SYNC ;
 int heapgetpage (TYPE_2__*,scalar_t__) ;
 int ss_report_location (int ,scalar_t__) ;
 scalar_t__ stub1 (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static bool
heapam_scan_sample_next_block(TableScanDesc scan, SampleScanState *scanstate)
{
 HeapScanDesc hscan = (HeapScanDesc) scan;
 TsmRoutine *tsm = scanstate->tsmroutine;
 BlockNumber blockno;


 if (hscan->rs_nblocks == 0)
  return 0;

 if (tsm->NextSampleBlock)
 {
  blockno = tsm->NextSampleBlock(scanstate, hscan->rs_nblocks);
  hscan->rs_cblock = blockno;
 }
 else
 {


  if (hscan->rs_cblock == InvalidBlockNumber)
  {
   Assert(!hscan->rs_inited);
   blockno = hscan->rs_startblock;
  }
  else
  {
   Assert(hscan->rs_inited);

   blockno = hscan->rs_cblock + 1;

   if (blockno >= hscan->rs_nblocks)
   {

    blockno = 0;
   }
   if (scan->rs_flags & SO_ALLOW_SYNC)
    ss_report_location(scan->rs_rd, blockno);

   if (blockno == hscan->rs_startblock)
   {
    blockno = InvalidBlockNumber;
   }
  }
 }

 if (!BlockNumberIsValid(blockno))
 {
  if (BufferIsValid(hscan->rs_cbuf))
   ReleaseBuffer(hscan->rs_cbuf);
  hscan->rs_cbuf = InvalidBuffer;
  hscan->rs_cblock = InvalidBlockNumber;
  hscan->rs_inited = 0;

  return 0;
 }

 heapgetpage(scan, blockno);
 hscan->rs_inited = 1;

 return 1;
}
