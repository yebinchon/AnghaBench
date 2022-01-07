
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_5__ {int numPrepXacts; TYPE_1__** prepXacts; } ;
struct TYPE_4__ {scalar_t__ xid; scalar_t__ ondisk; int inredo; } ;
typedef TYPE_1__* GlobalTransaction ;


 int Assert (int ) ;
 int DEBUG2 ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LW_EXCLUSIVE ;
 int RecoveryInProgress () ;
 int RemoveGXact (TYPE_1__*) ;
 int RemoveTwoPhaseFile (scalar_t__,int) ;
 TYPE_2__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int elog (int ,char*,scalar_t__) ;

void
PrepareRedoRemove(TransactionId xid, bool giveWarning)
{
 GlobalTransaction gxact = ((void*)0);
 int i;
 bool found = 0;

 Assert(LWLockHeldByMeInMode(TwoPhaseStateLock, LW_EXCLUSIVE));
 Assert(RecoveryInProgress());

 for (i = 0; i < TwoPhaseState->numPrepXacts; i++)
 {
  gxact = TwoPhaseState->prepXacts[i];

  if (gxact->xid == xid)
  {
   Assert(gxact->inredo);
   found = 1;
   break;
  }
 }




 if (!found)
  return;




 elog(DEBUG2, "removing 2PC data for transaction %u", xid);
 if (gxact->ondisk)
  RemoveTwoPhaseFile(xid, giveWarning);
 RemoveGXact(gxact);

 return;
}
