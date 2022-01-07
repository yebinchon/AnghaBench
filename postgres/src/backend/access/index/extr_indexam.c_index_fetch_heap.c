
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int kill_prior_tuple; int xactStartedInRecovery; int indexRelation; int xs_heap_continue; int xs_snapshot; int xs_heaptid; int xs_heapfetch; } ;
typedef TYPE_1__* IndexScanDesc ;


 int pgstat_count_heap_fetch (int ) ;
 int table_index_fetch_tuple (int ,int *,int ,int *,int *,int*) ;

bool
index_fetch_heap(IndexScanDesc scan, TupleTableSlot *slot)
{
 bool all_dead = 0;
 bool found;

 found = table_index_fetch_tuple(scan->xs_heapfetch, &scan->xs_heaptid,
         scan->xs_snapshot, slot,
         &scan->xs_heap_continue, &all_dead);

 if (found)
  pgstat_count_heap_fetch(scan->indexRelation);
 if (!scan->xactStartedInRecovery)
  scan->kill_prior_tuple = all_dead;

 return found;
}
