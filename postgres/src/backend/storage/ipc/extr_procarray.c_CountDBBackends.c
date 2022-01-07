
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pid; scalar_t__ databaseId; } ;
struct TYPE_5__ {int numProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGPROC ;
typedef scalar_t__ Oid ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int OidIsValid (scalar_t__) ;
 int ProcArrayLock ;
 TYPE_2__* allProcs ;
 TYPE_1__* procArray ;

int
CountDBBackends(Oid databaseid)
{
 ProcArrayStruct *arrayP = procArray;
 int count = 0;
 int index;

 LWLockAcquire(ProcArrayLock, LW_SHARED);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];

  if (proc->pid == 0)
   continue;
  if (!OidIsValid(databaseid) ||
   proc->databaseId == databaseid)
   count++;
 }

 LWLockRelease(ProcArrayLock);

 return count;
}
