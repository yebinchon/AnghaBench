
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* PMSignalFlags; } ;
typedef size_t PMSignalReason ;


 TYPE_1__* PMSignalState ;

bool
CheckPostmasterSignal(PMSignalReason reason)
{

 if (PMSignalState->PMSignalFlags[reason])
 {
  PMSignalState->PMSignalFlags[reason] = 0;
  return 1;
 }
 return 0;
}
