
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_18__ {void* latestCompletedXid; } ;
struct TYPE_13__ {scalar_t__ xids; } ;
struct TYPE_17__ {TYPE_1__ subxids; } ;
struct TYPE_16__ {int vacuumFlags; void* xmin; void* xid; int nxids; scalar_t__ overflowed; } ;
struct TYPE_15__ {int* pgprocnos; int numProcs; void* replication_slot_catalog_xmin; void* replication_slot_xmin; int lastOverflowedXid; } ;
struct TYPE_14__ {void** xip; void** subxip; int xcnt; int subxcnt; int suboverflowed; int copied; scalar_t__ whenTaken; int lsn; scalar_t__ regd_count; scalar_t__ active_count; int curcid; void* xmax; void* xmin; int takenDuringRecovery; } ;
typedef TYPE_2__* Snapshot ;
typedef TYPE_3__ ProcArrayStruct ;
typedef TYPE_4__ PGXACT ;
typedef TYPE_5__ PGPROC ;


 int Assert (scalar_t__) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 void* FirstNormalTransactionId ;
 int GetCurrentCommandId (int) ;
 int GetMaxSnapshotSubxidCount () ;
 int GetMaxSnapshotXidCount () ;
 scalar_t__ GetSnapshotCurrentTimestamp () ;
 int GetXLogInsertRecPtr () ;
 void* InvalidTransactionId ;
 int InvalidXLogRecPtr ;
 int KnownAssignedXidsGetAndSetXmin (void**,void**,void*) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MaintainOldSnapshotTimeMapping (scalar_t__,void*) ;
 TYPE_4__* MyPgXact ;
 scalar_t__ NormalTransactionIdPrecedes (void*,void*) ;
 int PROC_IN_LOGICAL_DECODING ;
 int PROC_IN_VACUUM ;
 int ProcArrayLock ;
 void* RecentGlobalDataXmin ;
 void* RecentGlobalXmin ;
 void* RecentXmin ;
 int RecoveryInProgress () ;
 TYPE_9__* ShmemVariableCache ;
 int TransactionIdAdvance (void*) ;
 scalar_t__ TransactionIdIsNormal (void*) ;
 scalar_t__ TransactionIdIsValid (void*) ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;
 scalar_t__ TransactionIdPrecedesOrEquals (void*,int ) ;
 void* TransactionXmin ;
 void* UINT32_ACCESS_ONCE (void*) ;
 TYPE_4__* allPgXact ;
 TYPE_5__* allProcs ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (void**,void*,int) ;
 scalar_t__ old_snapshot_threshold ;
 int pg_read_barrier () ;
 TYPE_3__* procArray ;
 void* vacuum_defer_cleanup_age ;

Snapshot
GetSnapshotData(Snapshot snapshot)
{
 ProcArrayStruct *arrayP = procArray;
 TransactionId xmin;
 TransactionId xmax;
 TransactionId globalxmin;
 int index;
 int count = 0;
 int subcount = 0;
 bool suboverflowed = 0;
 TransactionId replication_slot_xmin = InvalidTransactionId;
 TransactionId replication_slot_catalog_xmin = InvalidTransactionId;

 Assert(snapshot != ((void*)0));
 if (snapshot->xip == ((void*)0))
 {




  snapshot->xip = (TransactionId *)
   malloc(GetMaxSnapshotXidCount() * sizeof(TransactionId));
  if (snapshot->xip == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
  Assert(snapshot->subxip == ((void*)0));
  snapshot->subxip = (TransactionId *)
   malloc(GetMaxSnapshotSubxidCount() * sizeof(TransactionId));
  if (snapshot->subxip == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
 }





 LWLockAcquire(ProcArrayLock, LW_SHARED);


 xmax = ShmemVariableCache->latestCompletedXid;
 Assert(TransactionIdIsNormal(xmax));
 TransactionIdAdvance(xmax);


 globalxmin = xmin = xmax;

 snapshot->takenDuringRecovery = RecoveryInProgress();

 if (!snapshot->takenDuringRecovery)
 {
  int *pgprocnos = arrayP->pgprocnos;
  int numProcs;






  numProcs = arrayP->numProcs;
  for (index = 0; index < numProcs; index++)
  {
   int pgprocno = pgprocnos[index];
   PGXACT *pgxact = &allPgXact[pgprocno];
   TransactionId xid;





   if (pgxact->vacuumFlags &
    (PROC_IN_LOGICAL_DECODING | PROC_IN_VACUUM))
    continue;


   xid = UINT32_ACCESS_ONCE(pgxact->xmin);
   if (TransactionIdIsNormal(xid) &&
    NormalTransactionIdPrecedes(xid, globalxmin))
    globalxmin = xid;


   xid = UINT32_ACCESS_ONCE(pgxact->xid);







   if (!TransactionIdIsNormal(xid)
    || !NormalTransactionIdPrecedes(xid, xmax))
    continue;





   if (NormalTransactionIdPrecedes(xid, xmin))
    xmin = xid;
   if (pgxact == MyPgXact)
    continue;


   snapshot->xip[count++] = xid;
   if (!suboverflowed)
   {
    if (pgxact->overflowed)
     suboverflowed = 1;
    else
    {
     int nxids = pgxact->nxids;

     if (nxids > 0)
     {
      PGPROC *proc = &allProcs[pgprocno];

      pg_read_barrier();

      memcpy(snapshot->subxip + subcount,
          (void *) proc->subxids.xids,
          nxids * sizeof(TransactionId));
      subcount += nxids;
     }
    }
   }
  }
 }
 else
 {
  subcount = KnownAssignedXidsGetAndSetXmin(snapshot->subxip, &xmin,
              xmax);

  if (TransactionIdPrecedesOrEquals(xmin, procArray->lastOverflowedXid))
   suboverflowed = 1;
 }







 replication_slot_xmin = procArray->replication_slot_xmin;
 replication_slot_catalog_xmin = procArray->replication_slot_catalog_xmin;

 if (!TransactionIdIsValid(MyPgXact->xmin))
  MyPgXact->xmin = TransactionXmin = xmin;

 LWLockRelease(ProcArrayLock);






 if (TransactionIdPrecedes(xmin, globalxmin))
  globalxmin = xmin;


 RecentGlobalXmin = globalxmin - vacuum_defer_cleanup_age;
 if (!TransactionIdIsNormal(RecentGlobalXmin))
  RecentGlobalXmin = FirstNormalTransactionId;


 if (TransactionIdIsValid(replication_slot_xmin) &&
  NormalTransactionIdPrecedes(replication_slot_xmin, RecentGlobalXmin))
  RecentGlobalXmin = replication_slot_xmin;


 RecentGlobalDataXmin = RecentGlobalXmin;





 if (TransactionIdIsNormal(replication_slot_catalog_xmin) &&
  NormalTransactionIdPrecedes(replication_slot_catalog_xmin, RecentGlobalXmin))
  RecentGlobalXmin = replication_slot_catalog_xmin;

 RecentXmin = xmin;

 snapshot->xmin = xmin;
 snapshot->xmax = xmax;
 snapshot->xcnt = count;
 snapshot->subxcnt = subcount;
 snapshot->suboverflowed = suboverflowed;

 snapshot->curcid = GetCurrentCommandId(0);





 snapshot->active_count = 0;
 snapshot->regd_count = 0;
 snapshot->copied = 0;

 if (old_snapshot_threshold < 0)
 {




  snapshot->lsn = InvalidXLogRecPtr;
  snapshot->whenTaken = 0;
 }
 else
 {





  snapshot->lsn = GetXLogInsertRecPtr();
  snapshot->whenTaken = GetSnapshotCurrentTimestamp();
  MaintainOldSnapshotTimeMapping(snapshot->whenTaken, xmin);
 }

 return snapshot;
}
