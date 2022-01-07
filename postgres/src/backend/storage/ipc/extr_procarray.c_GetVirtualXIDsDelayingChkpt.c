
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VirtualTransactionId ;
struct TYPE_6__ {scalar_t__ delayChkpt; } ;
struct TYPE_5__ {int maxProcs; int numProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGXACT ;
typedef int PGPROC ;


 int GET_VXID_FROM_PGPROC (int ,int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;
 scalar_t__ VirtualTransactionIdIsValid (int ) ;
 TYPE_2__* allPgXact ;
 int * allProcs ;
 scalar_t__ palloc (int) ;
 TYPE_1__* procArray ;

VirtualTransactionId *
GetVirtualXIDsDelayingChkpt(int *nvxids)
{
 VirtualTransactionId *vxids;
 ProcArrayStruct *arrayP = procArray;
 int count = 0;
 int index;


 vxids = (VirtualTransactionId *)
  palloc(sizeof(VirtualTransactionId) * arrayP->maxProcs);

 LWLockAcquire(ProcArrayLock, LW_SHARED);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];

  if (pgxact->delayChkpt)
  {
   VirtualTransactionId vxid;

   GET_VXID_FROM_PGPROC(vxid, *proc);
   if (VirtualTransactionIdIsValid(vxid))
    vxids[count++] = vxid;
  }
 }

 LWLockRelease(ProcArrayLock);

 *nvxids = count;
 return vxids;
}
