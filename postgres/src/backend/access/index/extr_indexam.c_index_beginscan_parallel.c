
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int xs_heapfetch; int xs_snapshot; int heapRelation; } ;
struct TYPE_7__ {scalar_t__ ps_relid; int ps_snapshot_data; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef TYPE_1__* ParallelIndexScanDesc ;
typedef TYPE_2__* IndexScanDesc ;


 int Assert (int) ;
 int RegisterSnapshot (int ) ;
 scalar_t__ RelationGetRelid (int ) ;
 int RestoreSnapshot (int ) ;
 TYPE_2__* index_beginscan_internal (int ,int,int,int ,TYPE_1__*,int) ;
 int table_index_fetch_begin (int ) ;

IndexScanDesc
index_beginscan_parallel(Relation heaprel, Relation indexrel, int nkeys,
       int norderbys, ParallelIndexScanDesc pscan)
{
 Snapshot snapshot;
 IndexScanDesc scan;

 Assert(RelationGetRelid(heaprel) == pscan->ps_relid);
 snapshot = RestoreSnapshot(pscan->ps_snapshot_data);
 RegisterSnapshot(snapshot);
 scan = index_beginscan_internal(indexrel, nkeys, norderbys, snapshot,
         pscan, 1);





 scan->heapRelation = heaprel;
 scan->xs_snapshot = snapshot;


 scan->xs_heapfetch = table_index_fetch_begin(heaprel);

 return scan;
}
