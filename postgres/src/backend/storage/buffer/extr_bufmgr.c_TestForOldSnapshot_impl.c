
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ whenTaken; } ;
typedef TYPE_1__* Snapshot ;
typedef int Relation ;


 int ERRCODE_SNAPSHOT_TOO_OLD ;
 int ERROR ;
 scalar_t__ GetOldSnapshotThresholdTimestamp () ;
 scalar_t__ RelationAllowsEarlyPruning (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
TestForOldSnapshot_impl(Snapshot snapshot, Relation relation)
{
 if (RelationAllowsEarlyPruning(relation)
  && (snapshot)->whenTaken < GetOldSnapshotThresholdTimestamp())
  ereport(ERROR,
    (errcode(ERRCODE_SNAPSHOT_TOO_OLD),
     errmsg("snapshot too old")));
}
