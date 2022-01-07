
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int TableScanDesc ;
struct TYPE_11__ {scalar_t__ phs_relid; int phs_snapshot_off; int phs_snapshot_any; } ;
struct TYPE_10__ {TYPE_1__* rd_tableam; } ;
struct TYPE_9__ {int (* scan_begin ) (TYPE_2__*,int ,int ,int *,TYPE_3__*,int) ;} ;
typedef int Snapshot ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* ParallelTableScanDesc ;


 int Assert (int) ;
 int RegisterSnapshot (int ) ;
 scalar_t__ RelationGetRelid (TYPE_2__*) ;
 int RestoreSnapshot (char*) ;
 int SO_ALLOW_PAGEMODE ;
 int SO_ALLOW_STRAT ;
 int SO_ALLOW_SYNC ;
 int SO_TEMP_SNAPSHOT ;
 int SO_TYPE_SEQSCAN ;
 int SnapshotAny ;
 int stub1 (TYPE_2__*,int ,int ,int *,TYPE_3__*,int) ;

TableScanDesc
table_beginscan_parallel(Relation relation, ParallelTableScanDesc parallel_scan)
{
 Snapshot snapshot;
 uint32 flags = SO_TYPE_SEQSCAN |
 SO_ALLOW_STRAT | SO_ALLOW_SYNC | SO_ALLOW_PAGEMODE;

 Assert(RelationGetRelid(relation) == parallel_scan->phs_relid);

 if (!parallel_scan->phs_snapshot_any)
 {

  snapshot = RestoreSnapshot((char *) parallel_scan +
           parallel_scan->phs_snapshot_off);
  RegisterSnapshot(snapshot);
  flags |= SO_TEMP_SNAPSHOT;
 }
 else
 {

  snapshot = SnapshotAny;
 }

 return relation->rd_tableam->scan_begin(relation, snapshot, 0, ((void*)0),
           parallel_scan, flags);
}
