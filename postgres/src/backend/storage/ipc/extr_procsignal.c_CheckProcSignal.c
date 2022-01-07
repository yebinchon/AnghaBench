
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pss_signalFlags; } ;
typedef TYPE_1__ ProcSignalSlot ;
typedef size_t ProcSignalReason ;


 TYPE_1__* MyProcSignalSlot ;

__attribute__((used)) static bool
CheckProcSignal(ProcSignalReason reason)
{
 volatile ProcSignalSlot *slot = MyProcSignalSlot;

 if (slot != ((void*)0))
 {

  if (slot->pss_signalFlags[reason])
  {
   slot->pss_signalFlags[reason] = 0;
   return 1;
  }
 }

 return 0;
}
