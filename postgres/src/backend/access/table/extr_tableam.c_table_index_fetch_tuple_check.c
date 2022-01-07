
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int Snapshot ;
typedef int Relation ;
typedef int ItemPointer ;
typedef int IndexFetchTableData ;


 int ExecDropSingleTupleTableSlot (int *) ;
 int * table_index_fetch_begin (int ) ;
 int table_index_fetch_end (int *) ;
 int table_index_fetch_tuple (int *,int ,int ,int *,int*,int*) ;
 int * table_slot_create (int ,int *) ;

bool
table_index_fetch_tuple_check(Relation rel,
         ItemPointer tid,
         Snapshot snapshot,
         bool *all_dead)
{
 IndexFetchTableData *scan;
 TupleTableSlot *slot;
 bool call_again = 0;
 bool found;

 slot = table_slot_create(rel, ((void*)0));
 scan = table_index_fetch_begin(rel);
 found = table_index_fetch_tuple(scan, tid, snapshot, slot, &call_again,
         all_dead);
 table_index_fetch_end(scan);
 ExecDropSingleTupleTableSlot(slot);

 return found;
}
