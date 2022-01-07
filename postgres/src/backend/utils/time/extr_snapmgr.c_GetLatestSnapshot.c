
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;


 int Assert (int) ;
 int ERROR ;
 int FirstSnapshotSet ;
 int GetSnapshotData (int *) ;
 int GetTransactionSnapshot () ;
 int HistoricSnapshotActive () ;
 scalar_t__ IsInParallelMode () ;
 int SecondarySnapshot ;
 int SecondarySnapshotData ;
 int elog (int ,char*) ;

Snapshot
GetLatestSnapshot(void)
{




 if (IsInParallelMode())
  elog(ERROR,
    "cannot update SecondarySnapshot during a parallel operation");





 Assert(!HistoricSnapshotActive());


 if (!FirstSnapshotSet)
  return GetTransactionSnapshot();

 SecondarySnapshot = GetSnapshotData(&SecondarySnapshotData);

 return SecondarySnapshot;
}
