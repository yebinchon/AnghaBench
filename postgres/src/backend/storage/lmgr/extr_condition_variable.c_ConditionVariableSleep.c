
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int ConditionVariable ;


 int ConditionVariableTimedSleep (int *,int,int ) ;

void
ConditionVariableSleep(ConditionVariable *cv, uint32 wait_event_info)
{
 (void) ConditionVariableTimedSleep(cv, -1 ,
            wait_event_info);
}
