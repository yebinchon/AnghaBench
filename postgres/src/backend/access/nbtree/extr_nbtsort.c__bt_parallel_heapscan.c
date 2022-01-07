
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int indtuples; int havedead; TYPE_1__* btleader; } ;
struct TYPE_6__ {int nparticipantsdone; int brokenhotchain; double reltuples; int workersdonecv; int mutex; int indtuples; int havedead; } ;
struct TYPE_5__ {int nparticipanttuplesorts; TYPE_2__* btshared; } ;
typedef TYPE_2__ BTShared ;
typedef TYPE_3__ BTBuildState ;


 int ConditionVariableCancelSleep () ;
 int ConditionVariableSleep (int *,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WAIT_EVENT_PARALLEL_CREATE_INDEX_SCAN ;

__attribute__((used)) static double
_bt_parallel_heapscan(BTBuildState *buildstate, bool *brokenhotchain)
{
 BTShared *btshared = buildstate->btleader->btshared;
 int nparticipanttuplesorts;
 double reltuples;

 nparticipanttuplesorts = buildstate->btleader->nparticipanttuplesorts;
 for (;;)
 {
  SpinLockAcquire(&btshared->mutex);
  if (btshared->nparticipantsdone == nparticipanttuplesorts)
  {
   buildstate->havedead = btshared->havedead;
   buildstate->indtuples = btshared->indtuples;
   *brokenhotchain = btshared->brokenhotchain;
   reltuples = btshared->reltuples;
   SpinLockRelease(&btshared->mutex);
   break;
  }
  SpinLockRelease(&btshared->mutex);

  ConditionVariableSleep(&btshared->workersdonecv,
          WAIT_EVENT_PARALLEL_CREATE_INDEX_SCAN);
 }

 ConditionVariableCancelSleep();

 return reltuples;
}
