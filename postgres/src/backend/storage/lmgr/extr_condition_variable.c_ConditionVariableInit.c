
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wakeup; int mutex; } ;
typedef TYPE_1__ ConditionVariable ;


 int SpinLockInit (int *) ;
 int proclist_init (int *) ;

void
ConditionVariableInit(ConditionVariable *cv)
{
 SpinLockInit(&cv->mutex);
 proclist_init(&cv->wakeup);
}
