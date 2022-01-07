
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef TYPE_2__* TableScanDesc ;
struct TYPE_11__ {int * t_data; } ;
struct TYPE_8__ {int rs_rd; } ;
struct TYPE_10__ {int rs_cbuf; TYPE_7__ rs_ctup; TYPE_1__ rs_base; } ;
struct TYPE_9__ {int rs_flags; int rs_key; int rs_nkeys; } ;
typedef int ScanDirection ;
typedef TYPE_3__* HeapScanDesc ;


 int ExecClearTuple (int *) ;
 int ExecStoreBufferHeapTuple (TYPE_7__*,int *,int ) ;
 int HEAPAMSLOTDEBUG_1 ;
 int HEAPAMSLOTDEBUG_2 ;
 int HEAPAMSLOTDEBUG_3 ;
 int SO_ALLOW_PAGEMODE ;
 int heapgettup (TYPE_3__*,int ,int ,int ) ;
 int heapgettup_pagemode (TYPE_3__*,int ,int ,int ) ;
 int pgstat_count_heap_getnext (int ) ;

bool
heap_getnextslot(TableScanDesc sscan, ScanDirection direction, TupleTableSlot *slot)
{
 HeapScanDesc scan = (HeapScanDesc) sscan;



 HEAPAMSLOTDEBUG_1;

 if (sscan->rs_flags & SO_ALLOW_PAGEMODE)
  heapgettup_pagemode(scan, direction, sscan->rs_nkeys, sscan->rs_key);
 else
  heapgettup(scan, direction, sscan->rs_nkeys, sscan->rs_key);

 if (scan->rs_ctup.t_data == ((void*)0))
 {
  HEAPAMSLOTDEBUG_2;
  ExecClearTuple(slot);
  return 0;
 }





 HEAPAMSLOTDEBUG_3;

 pgstat_count_heap_getnext(scan->rs_base.rs_rd);

 ExecStoreBufferHeapTuple(&scan->rs_ctup, slot,
        scan->rs_cbuf);
 return 1;
}
