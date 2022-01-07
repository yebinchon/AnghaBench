
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int kill_prior_tuple; int xs_heap_continue; TYPE_2__* indexRelation; scalar_t__ xs_heapfetch; int xs_snapshot; } ;
struct TYPE_7__ {TYPE_1__* rd_indam; } ;
struct TYPE_6__ {int (* amrestrpos ) (TYPE_3__*) ;} ;
typedef TYPE_3__* IndexScanDesc ;


 int Assert (int ) ;
 int CHECK_SCAN_PROCEDURE (int ) ;
 int IsMVCCSnapshot (int ) ;
 int SCAN_CHECKS ;
 int amrestrpos ;
 int stub1 (TYPE_3__*) ;
 int table_index_fetch_reset (scalar_t__) ;

void
index_restrpos(IndexScanDesc scan)
{
 Assert(IsMVCCSnapshot(scan->xs_snapshot));

 SCAN_CHECKS;
 CHECK_SCAN_PROCEDURE(amrestrpos);


 if (scan->xs_heapfetch)
  table_index_fetch_reset(scan->xs_heapfetch);

 scan->kill_prior_tuple = 0;
 scan->xs_heap_continue = 0;

 scan->indexRelation->rd_indam->amrestrpos(scan);
}
