
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pid; } ;
typedef TYPE_1__ PGPROC ;


 TYPE_1__* AuxiliaryProcs ;
 int NUM_AUXILIARY_PROCS ;

PGPROC *
AuxiliaryPidGetProc(int pid)
{
 PGPROC *result = ((void*)0);
 int index;

 if (pid == 0)
  return ((void*)0);

 for (index = 0; index < NUM_AUXILIARY_PROCS; index++)
 {
  PGPROC *proc = &AuxiliaryProcs[index];

  if (proc->pid == pid)
  {
   result = proc;
   break;
  }
 }
 return result;
}
