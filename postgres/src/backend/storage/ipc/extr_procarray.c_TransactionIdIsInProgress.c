
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_14__ {int latestCompletedXid; } ;
struct TYPE_10__ {int * xids; } ;
struct TYPE_13__ {TYPE_1__ subxids; } ;
struct TYPE_12__ {int nxids; scalar_t__ overflowed; int xid; } ;
struct TYPE_11__ {int maxProcs; int numProcs; int* pgprocnos; int lastOverflowedXid; } ;
typedef TYPE_2__ ProcArrayStruct ;
typedef TYPE_3__ PGXACT ;
typedef TYPE_4__ PGPROC ;


 int Assert (int) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 scalar_t__ KnownAssignedXidExists (int ) ;
 int KnownAssignedXidsGet (int *,int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_4__* MyProc ;
 int ProcArrayLock ;
 int RecentXmin ;
 scalar_t__ RecoveryInProgress () ;
 TYPE_8__* ShmemVariableCache ;
 int SubTransGetTopmostTransaction (int ) ;
 int TOTAL_MAX_CACHED_SUBXIDS ;
 scalar_t__ TransactionIdDidAbort (int ) ;
 scalar_t__ TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsKnownCompleted (int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 scalar_t__ TransactionIdPrecedesOrEquals (int ,int ) ;
 int UINT32_ACCESS_ONCE (int ) ;
 TYPE_3__* allPgXact ;
 TYPE_4__* allProcs ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ malloc (int) ;
 int pg_read_barrier () ;
 TYPE_2__* procArray ;
 int xc_by_child_xid_inc () ;
 int xc_by_known_assigned_inc () ;
 int xc_by_known_xact_inc () ;
 int xc_by_latest_xid_inc () ;
 int xc_by_main_xid_inc () ;
 int xc_by_my_xact_inc () ;
 int xc_by_recent_xmin_inc () ;
 int xc_no_overflow_inc () ;
 int xc_slow_answer_inc () ;

bool
TransactionIdIsInProgress(TransactionId xid)
{
 static TransactionId *xids = ((void*)0);
 int nxids = 0;
 ProcArrayStruct *arrayP = procArray;
 TransactionId topxid;
 int i,
    j;







 if (TransactionIdPrecedes(xid, RecentXmin))
 {
  xc_by_recent_xmin_inc();
  return 0;
 }






 if (TransactionIdIsKnownCompleted(xid))
 {
  xc_by_known_xact_inc();
  return 0;
 }





 if (TransactionIdIsCurrentTransactionId(xid))
 {
  xc_by_my_xact_inc();
  return 1;
 }





 if (xids == ((void*)0))
 {





  int maxxids = RecoveryInProgress() ? TOTAL_MAX_CACHED_SUBXIDS : arrayP->maxProcs;

  xids = (TransactionId *) malloc(maxxids * sizeof(TransactionId));
  if (xids == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
 }

 LWLockAcquire(ProcArrayLock, LW_SHARED);





 if (TransactionIdPrecedes(ShmemVariableCache->latestCompletedXid, xid))
 {
  LWLockRelease(ProcArrayLock);
  xc_by_latest_xid_inc();
  return 1;
 }


 for (i = 0; i < arrayP->numProcs; i++)
 {
  int pgprocno = arrayP->pgprocnos[i];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];
  TransactionId pxid;
  int pxids;


  if (proc == MyProc)
   continue;


  pxid = UINT32_ACCESS_ONCE(pgxact->xid);

  if (!TransactionIdIsValid(pxid))
   continue;




  if (TransactionIdEquals(pxid, xid))
  {
   LWLockRelease(ProcArrayLock);
   xc_by_main_xid_inc();
   return 1;
  }





  if (TransactionIdPrecedes(xid, pxid))
   continue;




  pxids = pgxact->nxids;
  pg_read_barrier();
  for (j = pxids - 1; j >= 0; j--)
  {

   TransactionId cxid = UINT32_ACCESS_ONCE(proc->subxids.xids[j]);

   if (TransactionIdEquals(cxid, xid))
   {
    LWLockRelease(ProcArrayLock);
    xc_by_child_xid_inc();
    return 1;
   }
  }
  if (pgxact->overflowed)
   xids[nxids++] = pxid;
 }





 if (RecoveryInProgress())
 {

  Assert(nxids == 0);

  if (KnownAssignedXidExists(xid))
  {
   LWLockRelease(ProcArrayLock);
   xc_by_known_assigned_inc();
   return 1;
  }
  if (TransactionIdPrecedesOrEquals(xid, procArray->lastOverflowedXid))
   nxids = KnownAssignedXidsGet(xids, xid);
 }

 LWLockRelease(ProcArrayLock);





 if (nxids == 0)
 {
  xc_no_overflow_inc();
  return 0;
 }
 xc_slow_answer_inc();

 if (TransactionIdDidAbort(xid))
  return 0;






 topxid = SubTransGetTopmostTransaction(xid);
 Assert(TransactionIdIsValid(topxid));
 if (!TransactionIdEquals(topxid, xid))
 {
  for (i = 0; i < nxids; i++)
  {
   if (TransactionIdEquals(xids[i], topxid))
    return 1;
  }
 }

 return 0;
}
