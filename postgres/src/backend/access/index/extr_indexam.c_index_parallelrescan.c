
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* indexRelation; scalar_t__ xs_heapfetch; } ;
struct TYPE_7__ {TYPE_1__* rd_indam; } ;
struct TYPE_6__ {int (* amparallelrescan ) (TYPE_3__*) ;} ;
typedef TYPE_3__* IndexScanDesc ;


 int SCAN_CHECKS ;
 int stub1 (TYPE_3__*) ;
 int table_index_fetch_reset (scalar_t__) ;

void
index_parallelrescan(IndexScanDesc scan)
{
 SCAN_CHECKS;

 if (scan->xs_heapfetch)
  table_index_fetch_reset(scan->xs_heapfetch);


 if (scan->indexRelation->rd_indam->amparallelrescan != ((void*)0))
  scan->indexRelation->rd_indam->amparallelrescan(scan);
}
