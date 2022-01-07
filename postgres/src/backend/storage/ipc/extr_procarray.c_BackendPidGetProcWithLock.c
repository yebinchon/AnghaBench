
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pid; } ;
struct TYPE_6__ {int numProcs; size_t* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGPROC ;


 TYPE_2__* allProcs ;
 TYPE_1__* procArray ;

PGPROC *
BackendPidGetProcWithLock(int pid)
{
 PGPROC *result = ((void*)0);
 ProcArrayStruct *arrayP = procArray;
 int index;

 if (pid == 0)
  return ((void*)0);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  PGPROC *proc = &allProcs[arrayP->pgprocnos[index]];

  if (proc->pid == pid)
  {
   result = proc;
   break;
  }
 }

 return result;
}
