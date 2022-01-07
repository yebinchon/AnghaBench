
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int rs_flags; int rs_nkeys; int rs_rd; int rs_key; TYPE_1__* rs_parallel; } ;
struct TYPE_8__ {int t_self; int * t_data; } ;
struct TYPE_11__ {int rs_nblocks; int rs_inited; TYPE_3__ rs_base; void* rs_cblock; int rs_cbuf; TYPE_2__ rs_ctup; void* rs_numblocks; scalar_t__ rs_startblock; int * rs_strategy; } ;
struct TYPE_10__ {int phs_nblocks; } ;
struct TYPE_7__ {scalar_t__ phs_syncscan; } ;
typedef int ScanKeyData ;
typedef int * ScanKey ;
typedef TYPE_4__* ParallelBlockTableScanDesc ;
typedef TYPE_5__* HeapScanDesc ;


 int BAS_BULKREAD ;
 int FreeAccessStrategy (int *) ;
 int * GetAccessStrategy (int ) ;
 void* InvalidBlockNumber ;
 int InvalidBuffer ;
 int ItemPointerSetInvalid (int *) ;
 int NBuffers ;
 int RelationGetNumberOfBlocks (int ) ;
 int RelationUsesLocalBuffers (int ) ;
 int SO_ALLOW_STRAT ;
 int SO_ALLOW_SYNC ;
 int SO_TYPE_SEQSCAN ;
 int memcpy (int ,int *,int) ;
 int pgstat_count_heap_scan (int ) ;
 scalar_t__ ss_get_location (int ,int) ;
 scalar_t__ synchronize_seqscans ;

__attribute__((used)) static void
initscan(HeapScanDesc scan, ScanKey key, bool keep_startblock)
{
 ParallelBlockTableScanDesc bpscan = ((void*)0);
 bool allow_strat;
 bool allow_sync;
 if (scan->rs_base.rs_parallel != ((void*)0))
 {
  bpscan = (ParallelBlockTableScanDesc) scan->rs_base.rs_parallel;
  scan->rs_nblocks = bpscan->phs_nblocks;
 }
 else
  scan->rs_nblocks = RelationGetNumberOfBlocks(scan->rs_base.rs_rd);
 if (!RelationUsesLocalBuffers(scan->rs_base.rs_rd) &&
  scan->rs_nblocks > NBuffers / 4)
 {
  allow_strat = (scan->rs_base.rs_flags & SO_ALLOW_STRAT) != 0;
  allow_sync = (scan->rs_base.rs_flags & SO_ALLOW_SYNC) != 0;
 }
 else
  allow_strat = allow_sync = 0;

 if (allow_strat)
 {

  if (scan->rs_strategy == ((void*)0))
   scan->rs_strategy = GetAccessStrategy(BAS_BULKREAD);
 }
 else
 {
  if (scan->rs_strategy != ((void*)0))
   FreeAccessStrategy(scan->rs_strategy);
  scan->rs_strategy = ((void*)0);
 }

 if (scan->rs_base.rs_parallel != ((void*)0))
 {

  if (scan->rs_base.rs_parallel->phs_syncscan)
   scan->rs_base.rs_flags |= SO_ALLOW_SYNC;
  else
   scan->rs_base.rs_flags &= ~SO_ALLOW_SYNC;
 }
 else if (keep_startblock)
 {





  if (allow_sync && synchronize_seqscans)
   scan->rs_base.rs_flags |= SO_ALLOW_SYNC;
  else
   scan->rs_base.rs_flags &= ~SO_ALLOW_SYNC;
 }
 else if (allow_sync && synchronize_seqscans)
 {
  scan->rs_base.rs_flags |= SO_ALLOW_SYNC;
  scan->rs_startblock = ss_get_location(scan->rs_base.rs_rd, scan->rs_nblocks);
 }
 else
 {
  scan->rs_base.rs_flags &= ~SO_ALLOW_SYNC;
  scan->rs_startblock = 0;
 }

 scan->rs_numblocks = InvalidBlockNumber;
 scan->rs_inited = 0;
 scan->rs_ctup.t_data = ((void*)0);
 ItemPointerSetInvalid(&scan->rs_ctup.t_self);
 scan->rs_cbuf = InvalidBuffer;
 scan->rs_cblock = InvalidBlockNumber;






 if (key != ((void*)0))
  memcpy(scan->rs_base.rs_key, key, scan->rs_base.rs_nkeys * sizeof(ScanKeyData));






 if (scan->rs_base.rs_flags & SO_TYPE_SEQSCAN)
  pgstat_count_heap_scan(scan->rs_base.rs_rd);
}
