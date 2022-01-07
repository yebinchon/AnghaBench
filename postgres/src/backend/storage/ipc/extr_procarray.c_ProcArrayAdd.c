
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pgprocno; } ;
struct TYPE_5__ {int numProcs; int maxProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGPROC ;


 int ERRCODE_TOO_MANY_CONNECTIONS ;
 int FATAL ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int memmove (int*,int*,int) ;
 TYPE_1__* procArray ;

void
ProcArrayAdd(PGPROC *proc)
{
 ProcArrayStruct *arrayP = procArray;
 int index;

 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);

 if (arrayP->numProcs >= arrayP->maxProcs)
 {





  LWLockRelease(ProcArrayLock);
  ereport(FATAL,
    (errcode(ERRCODE_TOO_MANY_CONNECTIONS),
     errmsg("sorry, too many clients already")));
 }
 for (index = 0; index < arrayP->numProcs; index++)
 {




  if ((arrayP->pgprocnos[index] == -1) || (arrayP->pgprocnos[index] > proc->pgprocno))
   break;
 }

 memmove(&arrayP->pgprocnos[index + 1], &arrayP->pgprocnos[index],
   (arrayP->numProcs - index) * sizeof(int));
 arrayP->pgprocnos[index] = proc->pgprocno;
 arrayP->numProcs++;

 LWLockRelease(ProcArrayLock);
}
