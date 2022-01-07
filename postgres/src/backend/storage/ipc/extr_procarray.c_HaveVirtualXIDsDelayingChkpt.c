
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VirtualTransactionId ;
struct TYPE_6__ {scalar_t__ delayChkpt; } ;
struct TYPE_5__ {int numProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGXACT ;
typedef int PGPROC ;


 int GET_VXID_FROM_PGPROC (int ,int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;
 scalar_t__ VirtualTransactionIdEquals (int ,int ) ;
 scalar_t__ VirtualTransactionIdIsValid (int ) ;
 TYPE_2__* allPgXact ;
 int * allProcs ;
 TYPE_1__* procArray ;

bool
HaveVirtualXIDsDelayingChkpt(VirtualTransactionId *vxids, int nvxids)
{
 bool result = 0;
 ProcArrayStruct *arrayP = procArray;
 int index;

 LWLockAcquire(ProcArrayLock, LW_SHARED);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];
  VirtualTransactionId vxid;

  GET_VXID_FROM_PGPROC(vxid, *proc);

  if (pgxact->delayChkpt && VirtualTransactionIdIsValid(vxid))
  {
   int i;

   for (i = 0; i < nvxids; i++)
   {
    if (VirtualTransactionIdEquals(vxid, vxids[i]))
    {
     result = 1;
     break;
    }
   }
   if (result)
    break;
  }
 }

 LWLockRelease(ProcArrayLock);

 return result;
}
