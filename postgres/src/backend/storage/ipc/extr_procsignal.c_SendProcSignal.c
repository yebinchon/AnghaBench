
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_3__ {scalar_t__ pss_pid; int* pss_signalFlags; } ;
typedef TYPE_1__ ProcSignalSlot ;
typedef size_t ProcSignalReason ;
typedef int BackendId ;


 int ESRCH ;
 int InvalidBackendId ;
 int NumProcSignalSlots ;
 TYPE_1__* ProcSignalSlots ;
 int SIGUSR1 ;
 int errno ;
 int kill (scalar_t__,int ) ;

int
SendProcSignal(pid_t pid, ProcSignalReason reason, BackendId backendId)
{
 volatile ProcSignalSlot *slot;

 if (backendId != InvalidBackendId)
 {
  slot = &ProcSignalSlots[backendId - 1];
  if (slot->pss_pid == pid)
  {

   slot->pss_signalFlags[reason] = 1;

   return kill(pid, SIGUSR1);
  }
 }
 else
 {






  int i;

  for (i = NumProcSignalSlots - 1; i >= 0; i--)
  {
   slot = &ProcSignalSlots[i];

   if (slot->pss_pid == pid)
   {



    slot->pss_signalFlags[reason] = 1;

    return kill(pid, SIGUSR1);
   }
  }
 }

 errno = ESRCH;
 return -1;
}
