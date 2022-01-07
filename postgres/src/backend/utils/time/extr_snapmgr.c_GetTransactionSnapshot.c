
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ph_node; int regd_count; } ;
typedef TYPE_1__* Snapshot ;


 int Assert (int) ;
 TYPE_1__* CopySnapshot (TYPE_1__*) ;
 TYPE_1__* CurrentSnapshot ;
 int CurrentSnapshotData ;
 int ERROR ;
 int FirstSnapshotSet ;
 TYPE_1__* FirstXactSnapshot ;
 TYPE_1__* GetSerializableTransactionSnapshot (int *) ;
 TYPE_1__* GetSnapshotData (int *) ;
 TYPE_1__* HistoricSnapshot ;
 scalar_t__ HistoricSnapshotActive () ;
 int InvalidateCatalogSnapshot () ;
 scalar_t__ IsInParallelMode () ;
 scalar_t__ IsolationIsSerializable () ;
 scalar_t__ IsolationUsesXactSnapshot () ;
 int RegisteredSnapshots ;
 int elog (int ,char*) ;
 int pairingheap_add (int *,int *) ;
 int pairingheap_is_empty (int *) ;

Snapshot
GetTransactionSnapshot(void)
{






 if (HistoricSnapshotActive())
 {
  Assert(!FirstSnapshotSet);
  return HistoricSnapshot;
 }


 if (!FirstSnapshotSet)
 {




  InvalidateCatalogSnapshot();

  Assert(pairingheap_is_empty(&RegisteredSnapshots));
  Assert(FirstXactSnapshot == ((void*)0));

  if (IsInParallelMode())
   elog(ERROR,
     "cannot take query snapshot during a parallel operation");
  if (IsolationUsesXactSnapshot())
  {

   if (IsolationIsSerializable())
    CurrentSnapshot = GetSerializableTransactionSnapshot(&CurrentSnapshotData);
   else
    CurrentSnapshot = GetSnapshotData(&CurrentSnapshotData);

   CurrentSnapshot = CopySnapshot(CurrentSnapshot);
   FirstXactSnapshot = CurrentSnapshot;

   FirstXactSnapshot->regd_count++;
   pairingheap_add(&RegisteredSnapshots, &FirstXactSnapshot->ph_node);
  }
  else
   CurrentSnapshot = GetSnapshotData(&CurrentSnapshotData);

  FirstSnapshotSet = 1;
  return CurrentSnapshot;
 }

 if (IsolationUsesXactSnapshot())
  return CurrentSnapshot;


 InvalidateCatalogSnapshot();

 CurrentSnapshot = GetSnapshotData(&CurrentSnapshotData);

 return CurrentSnapshot;
}
