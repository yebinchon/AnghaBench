
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_tableam; } ;
struct TYPE_5__ {int (* parallelscan_estimate ) (TYPE_2__*) ;} ;
typedef scalar_t__ Snapshot ;
typedef int Size ;
typedef TYPE_2__* Relation ;


 int Assert (int) ;
 int EstimateSnapshotSpace (scalar_t__) ;
 scalar_t__ IsMVCCSnapshot (scalar_t__) ;
 scalar_t__ SnapshotAny ;
 int add_size (int ,int ) ;
 int stub1 (TYPE_2__*) ;

Size
table_parallelscan_estimate(Relation rel, Snapshot snapshot)
{
 Size sz = 0;

 if (IsMVCCSnapshot(snapshot))
  sz = add_size(sz, EstimateSnapshotSpace(snapshot));
 else
  Assert(snapshot == SnapshotAny);

 sz = add_size(sz, rel->rd_tableam->parallelscan_estimate(rel));

 return sz;
}
