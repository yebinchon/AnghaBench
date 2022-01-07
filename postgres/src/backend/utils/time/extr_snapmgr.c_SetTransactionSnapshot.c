
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VirtualTransactionId ;
typedef int TransactionId ;
struct TYPE_10__ {int xcnt; int subxcnt; int ph_node; int regd_count; int xmin; int takenDuringRecovery; int suboverflowed; int subxip; int xip; int xmax; } ;
struct TYPE_9__ {int xcnt; int subxcnt; int takenDuringRecovery; int suboverflowed; int subxip; int xip; int xmax; int xmin; } ;
typedef TYPE_1__* Snapshot ;
typedef int PGPROC ;


 int Assert (int) ;
 TYPE_3__* CopySnapshot (TYPE_3__*) ;
 TYPE_3__* CurrentSnapshot ;
 int CurrentSnapshotData ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int FirstSnapshotSet ;
 TYPE_3__* FirstXactSnapshot ;
 int GetMaxSnapshotSubxidCount () ;
 int GetMaxSnapshotXidCount () ;
 TYPE_3__* GetSnapshotData (int *) ;
 int HistoricSnapshotActive () ;
 int InvalidateCatalogSnapshot () ;
 scalar_t__ IsolationIsSerializable () ;
 scalar_t__ IsolationUsesXactSnapshot () ;
 int ProcArrayInstallImportedXmin (int ,int *) ;
 int ProcArrayInstallRestoredXmin (int ,int *) ;
 int RegisteredSnapshots ;
 int SetSerializableTransactionSnapshot (TYPE_3__*,int *,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*) ;
 int memcpy (int ,int ,int) ;
 int pairingheap_add (int *,int *) ;
 int pairingheap_is_empty (int *) ;

__attribute__((used)) static void
SetTransactionSnapshot(Snapshot sourcesnap, VirtualTransactionId *sourcevxid,
        int sourcepid, PGPROC *sourceproc)
{

 Assert(!FirstSnapshotSet);


 InvalidateCatalogSnapshot();

 Assert(pairingheap_is_empty(&RegisteredSnapshots));
 Assert(FirstXactSnapshot == ((void*)0));
 Assert(!HistoricSnapshotActive());
 CurrentSnapshot = GetSnapshotData(&CurrentSnapshotData);




 CurrentSnapshot->xmin = sourcesnap->xmin;
 CurrentSnapshot->xmax = sourcesnap->xmax;
 CurrentSnapshot->xcnt = sourcesnap->xcnt;
 Assert(sourcesnap->xcnt <= GetMaxSnapshotXidCount());
 memcpy(CurrentSnapshot->xip, sourcesnap->xip,
     sourcesnap->xcnt * sizeof(TransactionId));
 CurrentSnapshot->subxcnt = sourcesnap->subxcnt;
 Assert(sourcesnap->subxcnt <= GetMaxSnapshotSubxidCount());
 memcpy(CurrentSnapshot->subxip, sourcesnap->subxip,
     sourcesnap->subxcnt * sizeof(TransactionId));
 CurrentSnapshot->suboverflowed = sourcesnap->suboverflowed;
 CurrentSnapshot->takenDuringRecovery = sourcesnap->takenDuringRecovery;
 if (sourceproc != ((void*)0))
 {
  if (!ProcArrayInstallRestoredXmin(CurrentSnapshot->xmin, sourceproc))
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("could not import the requested snapshot"),
      errdetail("The source transaction is not running anymore.")));
 }
 else if (!ProcArrayInstallImportedXmin(CurrentSnapshot->xmin, sourcevxid))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("could not import the requested snapshot"),
     errdetail("The source process with PID %d is not running anymore.",
         sourcepid)));






 if (IsolationUsesXactSnapshot())
 {
  if (IsolationIsSerializable())
   SetSerializableTransactionSnapshot(CurrentSnapshot, sourcevxid,
              sourcepid);

  CurrentSnapshot = CopySnapshot(CurrentSnapshot);
  FirstXactSnapshot = CurrentSnapshot;

  FirstXactSnapshot->regd_count++;
  pairingheap_add(&RegisteredSnapshots, &FirstXactSnapshot->ph_node);
 }

 FirstSnapshotSet = 1;
}
