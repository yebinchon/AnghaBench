
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int ConditionVariableCancelSleep () ;
 int LWLockReleaseAll () ;
 int pgstat_report_wait_end () ;

__attribute__((used)) static void
ShutdownAuxiliaryProcess(int code, Datum arg)
{
 LWLockReleaseAll();
 ConditionVariableCancelSleep();
 pgstat_report_wait_end();
}
