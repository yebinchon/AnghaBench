
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ pid; int * waitLock; } ;
struct TYPE_9__ {scalar_t__ xid; } ;
struct TYPE_8__ {int numProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGXACT ;
typedef TYPE_3__ PGPROC ;


 scalar_t__ InvalidTransactionId ;
 TYPE_3__* MyProc ;
 TYPE_2__* allPgXact ;
 TYPE_3__* allProcs ;
 TYPE_1__* procArray ;

bool
MinimumActiveBackends(int min)
{
 ProcArrayStruct *arrayP = procArray;
 int count = 0;
 int index;


 if (min == 0)
  return 1;






 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];
  if (pgprocno == -1)
   continue;
  if (proc == MyProc)
   continue;
  if (pgxact->xid == InvalidTransactionId)
   continue;
  if (proc->pid == 0)
   continue;
  if (proc->waitLock != ((void*)0))
   continue;
  count++;
  if (count >= min)
   break;
 }

 return count >= min;
}
