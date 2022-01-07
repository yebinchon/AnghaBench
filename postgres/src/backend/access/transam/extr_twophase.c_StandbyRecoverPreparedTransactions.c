
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {int numPrepXacts; TYPE_1__** prepXacts; } ;
struct TYPE_3__ {int ondisk; int prepare_start_lsn; int xid; int inredo; } ;
typedef TYPE_1__* GlobalTransaction ;


 int Assert (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 char* ProcessTwoPhaseBuffer (int ,int ,int ,int,int) ;
 TYPE_2__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int pfree (char*) ;

void
StandbyRecoverPreparedTransactions(void)
{
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
         gxact->ondisk, 0, 0);
  if (buf != ((void*)0))
   pfree(buf);
 }
 LWLockRelease(TwoPhaseStateLock);
}
