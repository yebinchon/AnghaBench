
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_8__ {int nxids; int overflowed; } ;
struct TYPE_5__ {int * xids; } ;
struct TYPE_7__ {TYPE_1__ subxids; } ;
struct TYPE_6__ {int latestCompletedXid; } ;


 int Assert (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* MyPgXact ;
 TYPE_3__* MyProc ;
 int ProcArrayLock ;
 TYPE_2__* ShmemVariableCache ;
 scalar_t__ TransactionIdEquals (int ,int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int WARNING ;
 int XidCacheRemove (int) ;
 int elog (int ,char*,int ) ;

void
XidCacheRemoveRunningXids(TransactionId xid,
        int nxids, const TransactionId *xids,
        TransactionId latestXid)
{
 int i,
    j;

 Assert(TransactionIdIsValid(xid));
 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);






 for (i = nxids - 1; i >= 0; i--)
 {
  TransactionId anxid = xids[i];

  for (j = MyPgXact->nxids - 1; j >= 0; j--)
  {
   if (TransactionIdEquals(MyProc->subxids.xids[j], anxid))
   {
    XidCacheRemove(j);
    break;
   }
  }
  if (j < 0 && !MyPgXact->overflowed)
   elog(WARNING, "did not find subXID %u in MyProc", anxid);
 }

 for (j = MyPgXact->nxids - 1; j >= 0; j--)
 {
  if (TransactionIdEquals(MyProc->subxids.xids[j], xid))
  {
   XidCacheRemove(j);
   break;
  }
 }

 if (j < 0 && !MyPgXact->overflowed)
  elog(WARNING, "did not find subXID %u in MyProc", xid);


 if (TransactionIdPrecedes(ShmemVariableCache->latestCompletedXid,
         latestXid))
  ShmemVariableCache->latestCompletedXid = latestXid;

 LWLockRelease(ProcArrayLock);
}
