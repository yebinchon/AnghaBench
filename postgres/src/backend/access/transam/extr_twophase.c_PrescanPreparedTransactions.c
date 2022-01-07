
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_6__ {int nextFullXid; } ;
struct TYPE_5__ {int numPrepXacts; TYPE_1__** prepXacts; } ;
struct TYPE_4__ {int ondisk; int prepare_start_lsn; int xid; int inredo; } ;
typedef TYPE_1__* GlobalTransaction ;
typedef int FullTransactionId ;


 int Assert (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 char* ProcessTwoPhaseBuffer (int ,int ,int ,int,int) ;
 TYPE_3__* ShmemVariableCache ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 TYPE_2__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int XidFromFullTransactionId (int ) ;
 int * palloc (int) ;
 int pfree (char*) ;
 int * repalloc (int *,int) ;

TransactionId
PrescanPreparedTransactions(TransactionId **xids_p, int *nxids_p)
{
 FullTransactionId nextFullXid = ShmemVariableCache->nextFullXid;
 TransactionId origNextXid = XidFromFullTransactionId(nextFullXid);
 TransactionId result = origNextXid;
 TransactionId *xids = ((void*)0);
 int nxids = 0;
 int allocsize = 0;
 int i;

 LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
 for (i = 0; i < TwoPhaseState->numPrepXacts; i++)
 {
  TransactionId xid;
  char *buf;
  GlobalTransaction gxact = TwoPhaseState->prepXacts[i];

  Assert(gxact->inredo);

  xid = gxact->xid;

  buf = ProcessTwoPhaseBuffer(xid,
         gxact->prepare_start_lsn,
         gxact->ondisk, 0, 1);

  if (buf == ((void*)0))
   continue;





  if (TransactionIdPrecedes(xid, result))
   result = xid;

  if (xids_p)
  {
   if (nxids == allocsize)
   {
    if (nxids == 0)
    {
     allocsize = 10;
     xids = palloc(allocsize * sizeof(TransactionId));
    }
    else
    {
     allocsize = allocsize * 2;
     xids = repalloc(xids, allocsize * sizeof(TransactionId));
    }
   }
   xids[nxids++] = xid;
  }

  pfree(buf);
 }
 LWLockRelease(TwoPhaseStateLock);

 if (xids_p)
 {
  *xids_p = xids;
  *nxids_p = nxids;
 }

 return result;
}
