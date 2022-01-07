
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* rd_indam; } ;
struct TYPE_7__ {int kill_prior_tuple; int xs_heap_continue; int xs_heaptid; TYPE_4__* indexRelation; scalar_t__ xs_heapfetch; } ;
struct TYPE_6__ {int (* amgettuple ) (TYPE_2__*,int ) ;} ;
typedef int ScanDirection ;
typedef int * ItemPointer ;
typedef TYPE_2__* IndexScanDesc ;


 int Assert (int ) ;
 int CHECK_SCAN_PROCEDURE (int ) ;
 int ItemPointerIsValid (int *) ;
 int RecentGlobalXmin ;
 int SCAN_CHECKS ;
 int TransactionIdIsValid (int ) ;
 int amgettuple ;
 int pgstat_count_index_tuples (TYPE_4__*,int) ;
 int stub1 (TYPE_2__*,int ) ;
 int table_index_fetch_reset (scalar_t__) ;

ItemPointer
index_getnext_tid(IndexScanDesc scan, ScanDirection direction)
{
 bool found;

 SCAN_CHECKS;
 CHECK_SCAN_PROCEDURE(amgettuple);

 Assert(TransactionIdIsValid(RecentGlobalXmin));







 found = scan->indexRelation->rd_indam->amgettuple(scan, direction);


 scan->kill_prior_tuple = 0;
 scan->xs_heap_continue = 0;


 if (!found)
 {

  if (scan->xs_heapfetch)
   table_index_fetch_reset(scan->xs_heapfetch);

  return ((void*)0);
 }
 Assert(ItemPointerIsValid(&scan->xs_heaptid));

 pgstat_count_index_tuples(scan->indexRelation, 1);


 return &scan->xs_heaptid;
}
