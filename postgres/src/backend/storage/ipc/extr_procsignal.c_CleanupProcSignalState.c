
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pss_pid; } ;
typedef TYPE_1__ ProcSignalSlot ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetInt32 (int ) ;
 int LOG ;
 scalar_t__ MyProcPid ;
 TYPE_1__ volatile* MyProcSignalSlot ;
 TYPE_1__* ProcSignalSlots ;
 int elog (int ,char*,scalar_t__,int,int) ;

__attribute__((used)) static void
CleanupProcSignalState(int status, Datum arg)
{
 int pss_idx = DatumGetInt32(arg);
 volatile ProcSignalSlot *slot;

 slot = &ProcSignalSlots[pss_idx - 1];
 Assert(slot == MyProcSignalSlot);






 MyProcSignalSlot = ((void*)0);


 if (slot->pss_pid != MyProcPid)
 {




  elog(LOG, "process %d releasing ProcSignal slot %d, but it contains %d",
    MyProcPid, pss_idx, (int) slot->pss_pid);
  return;
 }

 slot->pss_pid = 0;
}
