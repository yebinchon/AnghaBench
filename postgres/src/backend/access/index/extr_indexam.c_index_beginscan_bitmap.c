
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xs_snapshot; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;


 TYPE_1__* index_beginscan_internal (int ,int,int ,int ,int *,int) ;

IndexScanDesc
index_beginscan_bitmap(Relation indexRelation,
        Snapshot snapshot,
        int nkeys)
{
 IndexScanDesc scan;

 scan = index_beginscan_internal(indexRelation, nkeys, 0, snapshot, ((void*)0), 0);





 scan->xs_snapshot = snapshot;

 return scan;
}
