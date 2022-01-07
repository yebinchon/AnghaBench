
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int TableScanDesc ;
struct TYPE_6__ {int rs_nkeys; int rs_flags; int * rs_key; int rs_parallel; scalar_t__ rs_snapshot; int rs_rd; } ;
struct TYPE_5__ {int t_tableOid; } ;
struct TYPE_7__ {TYPE_2__ rs_base; TYPE_1__ rs_ctup; int * rs_strategy; } ;
typedef scalar_t__ Snapshot ;
typedef int ScanKeyData ;
typedef int * ScanKey ;
typedef int Relation ;
typedef int ParallelTableScanDesc ;
typedef int HeapScanDescData ;
typedef TYPE_3__* HeapScanDesc ;


 int Assert (scalar_t__) ;
 scalar_t__ IsMVCCSnapshot (scalar_t__) ;
 int PredicateLockRelation (int ,scalar_t__) ;
 int RelationGetRelid (int ) ;
 int RelationIncrementReferenceCount (int ) ;
 int SO_ALLOW_PAGEMODE ;
 int SO_TYPE_SAMPLESCAN ;
 int SO_TYPE_SEQSCAN ;
 int initscan (TYPE_3__*,int *,int) ;
 scalar_t__ palloc (int) ;

TableScanDesc
heap_beginscan(Relation relation, Snapshot snapshot,
      int nkeys, ScanKey key,
      ParallelTableScanDesc parallel_scan,
      uint32 flags)
{
 HeapScanDesc scan;
 RelationIncrementReferenceCount(relation);




 scan = (HeapScanDesc) palloc(sizeof(HeapScanDescData));

 scan->rs_base.rs_rd = relation;
 scan->rs_base.rs_snapshot = snapshot;
 scan->rs_base.rs_nkeys = nkeys;
 scan->rs_base.rs_flags = flags;
 scan->rs_base.rs_parallel = parallel_scan;
 scan->rs_strategy = ((void*)0);




 if (!(snapshot && IsMVCCSnapshot(snapshot)))
  scan->rs_base.rs_flags &= ~SO_ALLOW_PAGEMODE;
 if (scan->rs_base.rs_flags & (SO_TYPE_SEQSCAN | SO_TYPE_SAMPLESCAN))
 {





  Assert(snapshot);
  PredicateLockRelation(relation, snapshot);
 }


 scan->rs_ctup.t_tableOid = RelationGetRelid(relation);





 if (nkeys > 0)
  scan->rs_base.rs_key = (ScanKey) palloc(sizeof(ScanKeyData) * nkeys);
 else
  scan->rs_base.rs_key = ((void*)0);

 initscan(scan, key, 0);

 return (TableScanDesc) scan;
}
