
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TableScanDesc ;
struct TYPE_6__ {int * ss_ScanTupleSlot; int ss_currentScanDesc; } ;
struct TYPE_7__ {int done; int haveblock; int donetuples; TYPE_1__ ss; } ;
typedef TYPE_2__ SampleScanState ;


 int ExecClearTuple (int *) ;
 int table_scan_sample_next_block (int ,TYPE_2__*) ;
 int table_scan_sample_next_tuple (int ,TYPE_2__*,int *) ;

__attribute__((used)) static TupleTableSlot *
tablesample_getnext(SampleScanState *scanstate)
{
 TableScanDesc scan = scanstate->ss.ss_currentScanDesc;
 TupleTableSlot *slot = scanstate->ss.ss_ScanTupleSlot;

 ExecClearTuple(slot);

 if (scanstate->done)
  return ((void*)0);

 for (;;)
 {
  if (!scanstate->haveblock)
  {
   if (!table_scan_sample_next_block(scan, scanstate))
   {
    scanstate->haveblock = 0;
    scanstate->done = 1;


    return ((void*)0);
   }

   scanstate->haveblock = 1;
  }

  if (!table_scan_sample_next_tuple(scan, scanstate, slot))
  {




   scanstate->haveblock = 0;
   continue;
  }


  break;
 }

 scanstate->donetuples++;

 return slot;
}
