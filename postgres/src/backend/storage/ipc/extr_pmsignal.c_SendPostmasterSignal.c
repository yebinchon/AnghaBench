
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* PMSignalFlags; } ;
typedef size_t PMSignalReason ;


 int IsUnderPostmaster ;
 TYPE_1__* PMSignalState ;
 int PostmasterPid ;
 int SIGUSR1 ;
 int kill (int ,int ) ;

void
SendPostmasterSignal(PMSignalReason reason)
{

 if (!IsUnderPostmaster)
  return;

 PMSignalState->PMSignalFlags[reason] = 1;

 kill(PostmasterPid, SIGUSR1);
}
