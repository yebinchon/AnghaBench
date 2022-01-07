
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xs_heapfetch; int xs_snapshot; int heapRelation; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;


 TYPE_1__* index_beginscan_internal (int ,int,int,int ,int *,int) ;
 int table_index_fetch_begin (int ) ;

IndexScanDesc
index_beginscan(Relation heapRelation,
    Relation indexRelation,
    Snapshot snapshot,
    int nkeys, int norderbys)
{
 IndexScanDesc scan;

 scan = index_beginscan_internal(indexRelation, nkeys, norderbys, snapshot, ((void*)0), 0);





 scan->heapRelation = heapRelation;
 scan->xs_snapshot = snapshot;


 scan->xs_heapfetch = table_index_fetch_begin(heapRelation);

 return scan;
}
