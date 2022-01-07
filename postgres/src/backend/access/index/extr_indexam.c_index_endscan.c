
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* rd_indam; } ;
struct TYPE_8__ {int xs_snapshot; scalar_t__ xs_temp_snap; TYPE_5__* indexRelation; int * xs_heapfetch; } ;
struct TYPE_7__ {int (* amendscan ) (TYPE_2__*) ;} ;
typedef TYPE_2__* IndexScanDesc ;


 int CHECK_SCAN_PROCEDURE (int ) ;
 int IndexScanEnd (TYPE_2__*) ;
 int RelationDecrementReferenceCount (TYPE_5__*) ;
 int SCAN_CHECKS ;
 int UnregisterSnapshot (int ) ;
 int amendscan ;
 int stub1 (TYPE_2__*) ;
 int table_index_fetch_end (int *) ;

void
index_endscan(IndexScanDesc scan)
{
 SCAN_CHECKS;
 CHECK_SCAN_PROCEDURE(amendscan);


 if (scan->xs_heapfetch)
 {
  table_index_fetch_end(scan->xs_heapfetch);
  scan->xs_heapfetch = ((void*)0);
 }


 scan->indexRelation->rd_indam->amendscan(scan);


 RelationDecrementReferenceCount(scan->indexRelation);

 if (scan->xs_temp_snap)
  UnregisterSnapshot(scan->xs_snapshot);


 IndexScanEnd(scan);
}
