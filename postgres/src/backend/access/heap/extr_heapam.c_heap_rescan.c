
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_4__ {int rs_flags; scalar_t__ rs_snapshot; } ;
struct TYPE_5__ {int rs_cbuf; TYPE_1__ rs_base; } ;
typedef int ScanKey ;
typedef TYPE_2__* HeapScanDesc ;


 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ IsMVCCSnapshot (scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int SO_ALLOW_PAGEMODE ;
 int SO_ALLOW_STRAT ;
 int SO_ALLOW_SYNC ;
 int initscan (TYPE_2__*,int ,int) ;

void
heap_rescan(TableScanDesc sscan, ScanKey key, bool set_params,
   bool allow_strat, bool allow_sync, bool allow_pagemode)
{
 HeapScanDesc scan = (HeapScanDesc) sscan;

 if (set_params)
 {
  if (allow_strat)
   scan->rs_base.rs_flags |= SO_ALLOW_STRAT;
  else
   scan->rs_base.rs_flags &= ~SO_ALLOW_STRAT;

  if (allow_sync)
   scan->rs_base.rs_flags |= SO_ALLOW_SYNC;
  else
   scan->rs_base.rs_flags &= ~SO_ALLOW_SYNC;

  if (allow_pagemode && scan->rs_base.rs_snapshot &&
   IsMVCCSnapshot(scan->rs_base.rs_snapshot))
   scan->rs_base.rs_flags |= SO_ALLOW_PAGEMODE;
  else
   scan->rs_base.rs_flags &= ~SO_ALLOW_PAGEMODE;
 }




 if (BufferIsValid(scan->rs_cbuf))
  ReleaseBuffer(scan->rs_cbuf);




 initscan(scan, key, 1);
}
