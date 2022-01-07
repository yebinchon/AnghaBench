
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_3__* TableScanDesc ;
struct TYPE_13__ {int * t_data; } ;
struct TYPE_10__ {int rs_flags; int rs_rd; int rs_key; int rs_nkeys; } ;
struct TYPE_14__ {TYPE_4__ rs_ctup; TYPE_1__ rs_base; } ;
struct TYPE_12__ {TYPE_2__* rs_rd; } ;
struct TYPE_11__ {scalar_t__ rd_tableam; } ;
typedef int ScanDirection ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* HeapScanDesc ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ GetHeapamTableAmRoutine () ;
 int HEAPDEBUG_1 ;
 int HEAPDEBUG_2 ;
 int HEAPDEBUG_3 ;
 int SO_ALLOW_PAGEMODE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*) ;
 int heapgettup (TYPE_5__*,int ,int ,int ) ;
 int heapgettup_pagemode (TYPE_5__*,int ,int ,int ) ;
 int pgstat_count_heap_getnext (int ) ;
 scalar_t__ unlikely (int) ;

HeapTuple
heap_getnext(TableScanDesc sscan, ScanDirection direction)
{
 HeapScanDesc scan = (HeapScanDesc) sscan;
 if (unlikely(sscan->rs_rd->rd_tableam != GetHeapamTableAmRoutine()))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg_internal("only heap AM is supported")));



 HEAPDEBUG_1;

 if (scan->rs_base.rs_flags & SO_ALLOW_PAGEMODE)
  heapgettup_pagemode(scan, direction,
       scan->rs_base.rs_nkeys, scan->rs_base.rs_key);
 else
  heapgettup(scan, direction,
       scan->rs_base.rs_nkeys, scan->rs_base.rs_key);

 if (scan->rs_ctup.t_data == ((void*)0))
 {
  HEAPDEBUG_2;
  return ((void*)0);
 }





 HEAPDEBUG_3;

 pgstat_count_heap_getnext(scan->rs_base.rs_rd);

 return &scan->rs_ctup;
}
