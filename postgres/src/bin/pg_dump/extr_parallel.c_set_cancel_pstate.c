
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pstate; } ;
typedef int ParallelState ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__ signal_info ;
 int signal_info_lock ;

__attribute__((used)) static void
set_cancel_pstate(ParallelState *pstate)
{




 signal_info.pstate = pstate;




}
