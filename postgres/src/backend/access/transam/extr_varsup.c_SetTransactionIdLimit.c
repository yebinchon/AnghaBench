
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_2__ {char* oldestXidDB; int nextFullXid; scalar_t__ xidWrapLimit; scalar_t__ xidStopLimit; scalar_t__ xidWarnLimit; scalar_t__ xidVacLimit; scalar_t__ oldestXid; } ;
typedef char* Oid ;


 int Assert (int ) ;
 int DEBUG1 ;
 scalar_t__ FirstNormalTransactionId ;
 int InRecovery ;
 scalar_t__ IsTransactionState () ;
 scalar_t__ IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MaxTransactionId ;
 int PMSIGNAL_START_AUTOVAC_LAUNCHER ;
 int SendPostmasterSignal (int ) ;
 TYPE_1__* ShmemVariableCache ;
 scalar_t__ TransactionIdFollowsOrEquals (scalar_t__,scalar_t__) ;
 int TransactionIdIsNormal (scalar_t__) ;
 int WARNING ;
 scalar_t__ XidFromFullTransactionId (int ) ;
 int XidGenLock ;
 scalar_t__ autovacuum_freeze_max_age ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*,scalar_t__) ;
 char* get_database_name (char*) ;

void
SetTransactionIdLimit(TransactionId oldest_datfrozenxid, Oid oldest_datoid)
{
 TransactionId xidVacLimit;
 TransactionId xidWarnLimit;
 TransactionId xidStopLimit;
 TransactionId xidWrapLimit;
 TransactionId curXid;

 Assert(TransactionIdIsNormal(oldest_datfrozenxid));
 xidWrapLimit = oldest_datfrozenxid + (MaxTransactionId >> 1);
 if (xidWrapLimit < FirstNormalTransactionId)
  xidWrapLimit += FirstNormalTransactionId;
 xidStopLimit = xidWrapLimit - 1000000;
 if (xidStopLimit < FirstNormalTransactionId)
  xidStopLimit -= FirstNormalTransactionId;
 xidWarnLimit = xidStopLimit - 10000000;
 if (xidWarnLimit < FirstNormalTransactionId)
  xidWarnLimit -= FirstNormalTransactionId;
 xidVacLimit = oldest_datfrozenxid + autovacuum_freeze_max_age;
 if (xidVacLimit < FirstNormalTransactionId)
  xidVacLimit += FirstNormalTransactionId;


 LWLockAcquire(XidGenLock, LW_EXCLUSIVE);
 ShmemVariableCache->oldestXid = oldest_datfrozenxid;
 ShmemVariableCache->xidVacLimit = xidVacLimit;
 ShmemVariableCache->xidWarnLimit = xidWarnLimit;
 ShmemVariableCache->xidStopLimit = xidStopLimit;
 ShmemVariableCache->xidWrapLimit = xidWrapLimit;
 ShmemVariableCache->oldestXidDB = oldest_datoid;
 curXid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);
 LWLockRelease(XidGenLock);


 ereport(DEBUG1,
   (errmsg("transaction ID wrap limit is %u, limited by database with OID %u",
     xidWrapLimit, oldest_datoid)));
 if (TransactionIdFollowsOrEquals(curXid, xidVacLimit) &&
  IsUnderPostmaster && !InRecovery)
  SendPostmasterSignal(PMSIGNAL_START_AUTOVAC_LAUNCHER);


 if (TransactionIdFollowsOrEquals(curXid, xidWarnLimit) && !InRecovery)
 {
  char *oldest_datname;
  if (IsTransactionState())
   oldest_datname = get_database_name(oldest_datoid);
  else
   oldest_datname = ((void*)0);

  if (oldest_datname)
   ereport(WARNING,
     (errmsg("database \"%s\" must be vacuumed within %u transactions",
       oldest_datname,
       xidWrapLimit - curXid),
      errhint("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
        "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
  else
   ereport(WARNING,
     (errmsg("database with OID %u must be vacuumed within %u transactions",
       oldest_datoid,
       xidWrapLimit - curXid),
      errhint("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
        "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
 }
}
