
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_5__ {int xs_heaptid; int xs_heap_continue; } ;
typedef int ScanDirection ;
typedef int * ItemPointer ;
typedef TYPE_1__* IndexScanDesc ;


 int Assert (int ) ;
 int ItemPointerEquals (int *,int *) ;
 int ItemPointerIsValid (int *) ;
 scalar_t__ index_fetch_heap (TYPE_1__*,int *) ;
 int * index_getnext_tid (TYPE_1__*,int ) ;

bool
index_getnext_slot(IndexScanDesc scan, ScanDirection direction, TupleTableSlot *slot)
{
 for (;;)
 {
  if (!scan->xs_heap_continue)
  {
   ItemPointer tid;


   tid = index_getnext_tid(scan, direction);


   if (tid == ((void*)0))
    break;

   Assert(ItemPointerEquals(tid, &scan->xs_heaptid));
  }






  Assert(ItemPointerIsValid(&scan->xs_heaptid));
  if (index_fetch_heap(scan, slot))
   return 1;
 }

 return 0;
}
