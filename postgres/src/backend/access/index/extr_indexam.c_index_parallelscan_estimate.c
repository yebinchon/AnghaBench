
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rd_indam; } ;
struct TYPE_4__ {int (* amestimateparallelscan ) () ;} ;
typedef int Snapshot ;
typedef int Size ;
typedef TYPE_2__* Relation ;


 int EstimateSnapshotSpace (int ) ;
 int MAXALIGN (int ) ;
 int ParallelIndexScanDescData ;
 int RELATION_CHECKS ;
 int add_size (int ,int ) ;
 int offsetof (int ,int ) ;
 int ps_snapshot_data ;
 int stub1 () ;

Size
index_parallelscan_estimate(Relation indexRelation, Snapshot snapshot)
{
 Size nbytes;

 RELATION_CHECKS;

 nbytes = offsetof(ParallelIndexScanDescData, ps_snapshot_data);
 nbytes = add_size(nbytes, EstimateSnapshotSpace(snapshot));
 nbytes = MAXALIGN(nbytes);






 if (indexRelation->rd_indam->amestimateparallelscan != ((void*)0))
  nbytes = add_size(nbytes,
        indexRelation->rd_indam->amestimateparallelscan());

 return nbytes;
}
