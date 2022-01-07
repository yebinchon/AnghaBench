
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ps_snapshot_data; int ps_offset; void* ps_indexid; void* ps_relid; } ;
struct TYPE_10__ {TYPE_1__* rd_indam; } ;
struct TYPE_9__ {int (* aminitparallelscan ) (void*) ;} ;
typedef int Snapshot ;
typedef int Size ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* ParallelIndexScanDesc ;


 int EstimateSnapshotSpace (int ) ;
 int MAXALIGN (int ) ;
 void* OffsetToPointer (TYPE_3__*,int ) ;
 int ParallelIndexScanDescData ;
 int RELATION_CHECKS ;
 void* RelationGetRelid (TYPE_2__*) ;
 int SerializeSnapshot (int ,int ) ;
 int add_size (int ,int ) ;
 int offsetof (int ,int ) ;
 int ps_snapshot_data ;
 int stub1 (void*) ;

void
index_parallelscan_initialize(Relation heapRelation, Relation indexRelation,
         Snapshot snapshot, ParallelIndexScanDesc target)
{
 Size offset;

 RELATION_CHECKS;

 offset = add_size(offsetof(ParallelIndexScanDescData, ps_snapshot_data),
       EstimateSnapshotSpace(snapshot));
 offset = MAXALIGN(offset);

 target->ps_relid = RelationGetRelid(heapRelation);
 target->ps_indexid = RelationGetRelid(indexRelation);
 target->ps_offset = offset;
 SerializeSnapshot(snapshot, target->ps_snapshot_data);


 if (indexRelation->rd_indam->aminitparallelscan != ((void*)0))
 {
  void *amtarget;

  amtarget = OffsetToPointer(target, offset);
  indexRelation->rd_indam->aminitparallelscan(amtarget);
 }
}
