
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_12__ {int xmin; } ;
struct TYPE_9__ {int includes_all_transactions; } ;
struct TYPE_11__ {scalar_t__ state; TYPE_1__ committed; } ;
struct TYPE_10__ {int xcnt; int * xip; int snapshot_type; int xmax; int xmin; } ;
typedef TYPE_2__* Snapshot ;
typedef TYPE_3__ SnapBuild ;


 int Assert (int) ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int FirstSnapshotSet ;
 int GetMaxSnapshotXidCount () ;
 int GetOldestSafeDecodingTransactionId (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_8__* MyPgXact ;
 scalar_t__ NormalTransactionIdPrecedes (int ,int ) ;
 int ProcArrayLock ;
 scalar_t__ SNAPBUILD_CONSISTENT ;
 int SNAPSHOT_MVCC ;
 TYPE_2__* SnapBuildBuildSnapshot (TYPE_3__*) ;
 int TransactionIdAdvance (int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int TransactionIdPrecedesOrEquals (int ,int ) ;
 scalar_t__ XACT_REPEATABLE_READ ;
 scalar_t__ XactIsoLevel ;
 void* bsearch (int *,int *,int,int,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ palloc (int) ;
 int xidComparator ;

Snapshot
SnapBuildInitialSnapshot(SnapBuild *builder)
{
 Snapshot snap;
 TransactionId xid;
 TransactionId *newxip;
 int newxcnt = 0;

 Assert(!FirstSnapshotSet);
 Assert(XactIsoLevel == XACT_REPEATABLE_READ);

 if (builder->state != SNAPBUILD_CONSISTENT)
  elog(ERROR, "cannot build an initial slot snapshot before reaching a consistent state");

 if (!builder->committed.includes_all_transactions)
  elog(ERROR, "cannot build an initial slot snapshot, not all transactions are monitored anymore");


 if (TransactionIdIsValid(MyPgXact->xmin))
  elog(ERROR, "cannot build an initial slot snapshot when MyPgXact->xmin already is valid");

 snap = SnapBuildBuildSnapshot(builder);
 MyPgXact->xmin = snap->xmin;


 newxip = (TransactionId *)
  palloc(sizeof(TransactionId) * GetMaxSnapshotXidCount());







 for (xid = snap->xmin; NormalTransactionIdPrecedes(xid, snap->xmax);)
 {
  void *test;





  test = bsearch(&xid, snap->xip, snap->xcnt,
        sizeof(TransactionId), xidComparator);

  if (test == ((void*)0))
  {
   if (newxcnt >= GetMaxSnapshotXidCount())
    ereport(ERROR,
      (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
       errmsg("initial slot snapshot too large")));

   newxip[newxcnt++] = xid;
  }

  TransactionIdAdvance(xid);
 }


 snap->snapshot_type = SNAPSHOT_MVCC;
 snap->xcnt = newxcnt;
 snap->xip = newxip;

 return snap;
}
