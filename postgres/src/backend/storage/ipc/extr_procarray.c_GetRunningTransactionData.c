
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef void* TransactionId ;
struct TYPE_13__ {scalar_t__ xids; } ;
struct TYPE_17__ {TYPE_1__ subxids; } ;
struct TYPE_16__ {int nxids; scalar_t__ overflowed; int xid; } ;
struct TYPE_15__ {int numProcs; int* pgprocnos; } ;
struct TYPE_14__ {void** xids; int xcnt; int subxcnt; int subxid_overflow; void* nextXid; void* oldestRunningXid; void* latestCompletedXid; } ;
struct TYPE_12__ {int nextFullXid; void* latestCompletedXid; } ;
typedef TYPE_2__ RunningTransactionsData ;
typedef TYPE_2__* RunningTransactions ;
typedef TYPE_4__ ProcArrayStruct ;
typedef TYPE_5__ PGXACT ;
typedef TYPE_6__ PGPROC ;


 int Assert (int) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;
 int RecoveryInProgress () ;
 TYPE_10__* ShmemVariableCache ;
 int TOTAL_MAX_CACHED_SUBXIDS ;
 int TransactionIdIsNormal (void*) ;
 int TransactionIdIsValid (void*) ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;
 void* UINT32_ACCESS_ONCE (int ) ;
 void* XidFromFullTransactionId (int ) ;
 int XidGenLock ;
 TYPE_5__* allPgXact ;
 TYPE_6__* allProcs ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (void**,void*,int) ;
 int pg_read_barrier () ;
 TYPE_4__* procArray ;

RunningTransactions
GetRunningTransactionData(void)
{

 static RunningTransactionsData CurrentRunningXactsData;

 ProcArrayStruct *arrayP = procArray;
 RunningTransactions CurrentRunningXacts = &CurrentRunningXactsData;
 TransactionId latestCompletedXid;
 TransactionId oldestRunningXid;
 TransactionId *xids;
 int index;
 int count;
 int subcount;
 bool suboverflowed;

 Assert(!RecoveryInProgress());
 if (CurrentRunningXacts->xids == ((void*)0))
 {



  CurrentRunningXacts->xids = (TransactionId *)
   malloc(TOTAL_MAX_CACHED_SUBXIDS * sizeof(TransactionId));
  if (CurrentRunningXacts->xids == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
 }

 xids = CurrentRunningXacts->xids;

 count = subcount = 0;
 suboverflowed = 0;





 LWLockAcquire(ProcArrayLock, LW_SHARED);
 LWLockAcquire(XidGenLock, LW_SHARED);

 latestCompletedXid = ShmemVariableCache->latestCompletedXid;

 oldestRunningXid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);




 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGXACT *pgxact = &allPgXact[pgprocno];
  TransactionId xid;


  xid = UINT32_ACCESS_ONCE(pgxact->xid);





  if (!TransactionIdIsValid(xid))
   continue;






  if (TransactionIdPrecedes(xid, oldestRunningXid))
   oldestRunningXid = xid;

  if (pgxact->overflowed)
   suboverflowed = 1;
  xids[count++] = xid;
 }





 if (!suboverflowed)
 {
  for (index = 0; index < arrayP->numProcs; index++)
  {
   int pgprocno = arrayP->pgprocnos[index];
   PGPROC *proc = &allProcs[pgprocno];
   PGXACT *pgxact = &allPgXact[pgprocno];
   int nxids;





   nxids = pgxact->nxids;
   if (nxids > 0)
   {

    pg_read_barrier();

    memcpy(&xids[count], (void *) proc->subxids.xids,
        nxids * sizeof(TransactionId));
    count += nxids;
    subcount += nxids;






   }
  }
 }
 CurrentRunningXacts->xcnt = count - subcount;
 CurrentRunningXacts->subxcnt = subcount;
 CurrentRunningXacts->subxid_overflow = suboverflowed;
 CurrentRunningXacts->nextXid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);
 CurrentRunningXacts->oldestRunningXid = oldestRunningXid;
 CurrentRunningXacts->latestCompletedXid = latestCompletedXid;

 Assert(TransactionIdIsValid(CurrentRunningXacts->nextXid));
 Assert(TransactionIdIsValid(CurrentRunningXacts->oldestRunningXid));
 Assert(TransactionIdIsNormal(CurrentRunningXacts->latestCompletedXid));



 return CurrentRunningXacts;
}
