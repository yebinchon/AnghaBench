
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numPrepXacts; int * prepXacts; } ;
typedef int GlobalTransactionData ;
typedef int * GlobalTransaction ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_1__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int memcpy (int *,int ,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static int
GetPreparedTransactionList(GlobalTransaction *gxacts)
{
 GlobalTransaction array;
 int num;
 int i;

 LWLockAcquire(TwoPhaseStateLock, LW_SHARED);

 if (TwoPhaseState->numPrepXacts == 0)
 {
  LWLockRelease(TwoPhaseStateLock);

  *gxacts = ((void*)0);
  return 0;
 }

 num = TwoPhaseState->numPrepXacts;
 array = (GlobalTransaction) palloc(sizeof(GlobalTransactionData) * num);
 *gxacts = array;
 for (i = 0; i < num; i++)
  memcpy(array + i, TwoPhaseState->prepXacts[i],
      sizeof(GlobalTransactionData));

 LWLockRelease(TwoPhaseStateLock);

 return num;
}
