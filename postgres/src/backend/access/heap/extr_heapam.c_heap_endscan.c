
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_4__ {int rs_flags; int rs_snapshot; TYPE_2__* rs_key; int rs_rd; } ;
struct TYPE_5__ {TYPE_1__ rs_base; int * rs_strategy; int rs_cbuf; } ;
typedef TYPE_2__* HeapScanDesc ;


 scalar_t__ BufferIsValid (int ) ;
 int FreeAccessStrategy (int *) ;
 int RelationDecrementReferenceCount (int ) ;
 int ReleaseBuffer (int ) ;
 int SO_TEMP_SNAPSHOT ;
 int UnregisterSnapshot (int ) ;
 int pfree (TYPE_2__*) ;

void
heap_endscan(TableScanDesc sscan)
{
 HeapScanDesc scan = (HeapScanDesc) sscan;






 if (BufferIsValid(scan->rs_cbuf))
  ReleaseBuffer(scan->rs_cbuf);




 RelationDecrementReferenceCount(scan->rs_base.rs_rd);

 if (scan->rs_base.rs_key)
  pfree(scan->rs_base.rs_key);

 if (scan->rs_strategy != ((void*)0))
  FreeAccessStrategy(scan->rs_strategy);

 if (scan->rs_base.rs_flags & SO_TEMP_SNAPSHOT)
  UnregisterSnapshot(scan->rs_base.rs_snapshot);

 pfree(scan);
}
