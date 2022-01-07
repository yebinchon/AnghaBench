
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ snapshot_type; scalar_t__ curcid; scalar_t__ regd_count; scalar_t__ active_count; scalar_t__ copied; int takenDuringRecovery; int suboverflowed; } ;
typedef TYPE_1__* Snapshot ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ FirstCommandId ;
 scalar_t__ SNAPSHOT_HISTORIC_MVCC ;
 int SnapBuildFreeSnapshot (TYPE_1__*) ;
 int elog (int ,char*) ;

void
SnapBuildSnapDecRefcount(Snapshot snap)
{

 Assert(snap->snapshot_type == SNAPSHOT_HISTORIC_MVCC);


 Assert(snap->curcid == FirstCommandId);
 Assert(!snap->suboverflowed);
 Assert(!snap->takenDuringRecovery);

 Assert(snap->regd_count == 0);

 Assert(snap->active_count > 0);


 if (snap->copied)
  elog(ERROR, "cannot free a copied snapshot");

 snap->active_count--;
 if (snap->active_count == 0)
  SnapBuildFreeSnapshot(snap);
}
