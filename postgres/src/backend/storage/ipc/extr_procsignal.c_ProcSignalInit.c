
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sig_atomic_t ;
struct TYPE_4__ {scalar_t__ pss_pid; int pss_signalFlags; } ;
typedef TYPE_1__ ProcSignalSlot ;


 int Assert (int) ;
 int CleanupProcSignalState ;
 int Int32GetDatum (int) ;
 int LOG ;
 int MemSet (int ,int ,int) ;
 scalar_t__ MyProcPid ;
 TYPE_1__ volatile* MyProcSignalSlot ;
 int NUM_PROCSIGNALS ;
 int NumProcSignalSlots ;
 TYPE_1__* ProcSignalSlots ;
 int elog (int ,char*,scalar_t__,int) ;
 int on_shmem_exit (int ,int ) ;

void
ProcSignalInit(int pss_idx)
{
 volatile ProcSignalSlot *slot;

 Assert(pss_idx >= 1 && pss_idx <= NumProcSignalSlots);

 slot = &ProcSignalSlots[pss_idx - 1];


 if (slot->pss_pid != 0)
  elog(LOG, "process %d taking over ProcSignal slot %d, but it's not empty",
    MyProcPid, pss_idx);


 MemSet(slot->pss_signalFlags, 0, NUM_PROCSIGNALS * sizeof(sig_atomic_t));


 slot->pss_pid = MyProcPid;


 MyProcSignalSlot = slot;


 on_shmem_exit(CleanupProcSignalState, Int32GetDatum(pss_idx));
}
