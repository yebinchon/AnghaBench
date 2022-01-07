
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_8__ {int xid; int nxids; int overflowed; } ;
struct TYPE_5__ {int* xids; } ;
struct TYPE_7__ {TYPE_1__ subxids; } ;
struct TYPE_6__ {int xidVacLimit; int xidWarnLimit; int xidStopLimit; int xidWrapLimit; char* oldestXidDB; int nextFullXid; } ;
typedef char* Oid ;
typedef int FullTransactionId ;


 int Assert (int) ;
 int BootstrapTransactionId ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int ExtendCLOG (int) ;
 int ExtendCommitTs (int) ;
 int ExtendSUBTRANS (int) ;
 int FullTransactionIdAdvance (int *) ;
 int FullTransactionIdFromEpochAndXid (int ,int) ;
 scalar_t__ IsBootstrapProcessingMode () ;
 scalar_t__ IsInParallelMode () ;
 scalar_t__ IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* MyPgXact ;
 TYPE_3__* MyProc ;
 int PGPROC_MAX_CACHED_SUBXIDS ;
 int PMSIGNAL_START_AUTOVAC_LAUNCHER ;
 scalar_t__ RecoveryInProgress () ;
 int SendPostmasterSignal (int ) ;
 TYPE_2__* ShmemVariableCache ;
 scalar_t__ TransactionIdFollowsOrEquals (int,int) ;
 int WARNING ;
 int XidFromFullTransactionId (int ) ;
 int XidGenLock ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*,...) ;
 char* get_database_name (char*) ;
 int pg_write_barrier () ;

FullTransactionId
GetNewTransactionId(bool isSubXact)
{
 FullTransactionId full_xid;
 TransactionId xid;





 if (IsInParallelMode())
  elog(ERROR, "cannot assign TransactionIds during a parallel operation");





 if (IsBootstrapProcessingMode())
 {
  Assert(!isSubXact);
  MyPgXact->xid = BootstrapTransactionId;
  return FullTransactionIdFromEpochAndXid(0, BootstrapTransactionId);
 }


 if (RecoveryInProgress())
  elog(ERROR, "cannot assign TransactionIds during recovery");

 LWLockAcquire(XidGenLock, LW_EXCLUSIVE);

 full_xid = ShmemVariableCache->nextFullXid;
 xid = XidFromFullTransactionId(full_xid);
 if (TransactionIdFollowsOrEquals(xid, ShmemVariableCache->xidVacLimit))
 {







  TransactionId xidWarnLimit = ShmemVariableCache->xidWarnLimit;
  TransactionId xidStopLimit = ShmemVariableCache->xidStopLimit;
  TransactionId xidWrapLimit = ShmemVariableCache->xidWrapLimit;
  Oid oldest_datoid = ShmemVariableCache->oldestXidDB;

  LWLockRelease(XidGenLock);






  if (IsUnderPostmaster && (xid % 65536) == 0)
   SendPostmasterSignal(PMSIGNAL_START_AUTOVAC_LAUNCHER);

  if (IsUnderPostmaster &&
   TransactionIdFollowsOrEquals(xid, xidStopLimit))
  {
   char *oldest_datname = get_database_name(oldest_datoid);


   if (oldest_datname)
    ereport(ERROR,
      (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
       errmsg("database is not accepting commands to avoid wraparound data loss in database \"%s\"",
        oldest_datname),
       errhint("Stop the postmaster and vacuum that database in single-user mode.\n"
         "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
   else
    ereport(ERROR,
      (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
       errmsg("database is not accepting commands to avoid wraparound data loss in database with OID %u",
        oldest_datoid),
       errhint("Stop the postmaster and vacuum that database in single-user mode.\n"
         "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
  }
  else if (TransactionIdFollowsOrEquals(xid, xidWarnLimit))
  {
   char *oldest_datname = get_database_name(oldest_datoid);


   if (oldest_datname)
    ereport(WARNING,
      (errmsg("database \"%s\" must be vacuumed within %u transactions",
        oldest_datname,
        xidWrapLimit - xid),
       errhint("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
         "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
   else
    ereport(WARNING,
      (errmsg("database with OID %u must be vacuumed within %u transactions",
        oldest_datoid,
        xidWrapLimit - xid),
       errhint("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
         "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
  }


  LWLockAcquire(XidGenLock, LW_EXCLUSIVE);
  full_xid = ShmemVariableCache->nextFullXid;
  xid = XidFromFullTransactionId(full_xid);
 }
 ExtendCLOG(xid);
 ExtendCommitTs(xid);
 ExtendSUBTRANS(xid);







 FullTransactionIdAdvance(&ShmemVariableCache->nextFullXid);
 if (!isSubXact)
  MyPgXact->xid = xid;
 else
 {
  int nxids = MyPgXact->nxids;

  if (nxids < PGPROC_MAX_CACHED_SUBXIDS)
  {
   MyProc->subxids.xids[nxids] = xid;
   pg_write_barrier();
   MyPgXact->nxids = nxids + 1;
  }
  else
   MyPgXact->overflowed = 1;
 }

 LWLockRelease(XidGenLock);

 return full_xid;
}
