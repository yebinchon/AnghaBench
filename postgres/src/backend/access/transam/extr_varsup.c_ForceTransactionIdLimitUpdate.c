
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int oldestXidDB; int oldestXid; int xidVacLimit; int nextFullXid; } ;
typedef int Oid ;


 int DATABASEOID ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ObjectIdGetDatum (int ) ;
 int SearchSysCacheExists1 (int ,int ) ;
 TYPE_1__* ShmemVariableCache ;
 scalar_t__ TransactionIdFollowsOrEquals (int ,int ) ;
 int TransactionIdIsNormal (int ) ;
 int TransactionIdIsValid (int ) ;
 int XidFromFullTransactionId (int ) ;
 int XidGenLock ;

bool
ForceTransactionIdLimitUpdate(void)
{
 TransactionId nextXid;
 TransactionId xidVacLimit;
 TransactionId oldestXid;
 Oid oldestXidDB;


 LWLockAcquire(XidGenLock, LW_SHARED);
 nextXid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);
 xidVacLimit = ShmemVariableCache->xidVacLimit;
 oldestXid = ShmemVariableCache->oldestXid;
 oldestXidDB = ShmemVariableCache->oldestXidDB;
 LWLockRelease(XidGenLock);

 if (!TransactionIdIsNormal(oldestXid))
  return 1;
 if (!TransactionIdIsValid(xidVacLimit))
  return 1;
 if (TransactionIdFollowsOrEquals(nextXid, xidVacLimit))
  return 1;
 if (!SearchSysCacheExists1(DATABASEOID, ObjectIdGetDatum(oldestXidDB)))
  return 1;
 return 0;
}
