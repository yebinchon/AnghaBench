
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int participants; int static_party; int condition_variable; scalar_t__ elected; scalar_t__ phase; scalar_t__ arrived; int mutex; } ;
typedef TYPE_1__ Barrier ;


 int ConditionVariableInit (int *) ;
 int SpinLockInit (int *) ;

void
BarrierInit(Barrier *barrier, int participants)
{
 SpinLockInit(&barrier->mutex);
 barrier->participants = participants;
 barrier->arrived = 0;
 barrier->phase = 0;
 barrier->elected = 0;
 barrier->static_party = participants > 0;
 ConditionVariableInit(&barrier->condition_variable);
}
