
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VirtualTransactionId ;
typedef int TransactionId ;
struct TYPE_11__ {scalar_t__ databaseId; } ;
struct TYPE_10__ {int vacuumFlags; int xmin; } ;
struct TYPE_9__ {int maxProcs; int numProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGXACT ;
typedef TYPE_3__ PGPROC ;


 int GET_VXID_FROM_PGPROC (int ,TYPE_3__) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 scalar_t__ MyDatabaseId ;
 TYPE_3__* MyProc ;
 int ProcArrayLock ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedesOrEquals (int ,int ) ;
 int UINT32_ACCESS_ONCE (int ) ;
 scalar_t__ VirtualTransactionIdIsValid (int ) ;
 TYPE_2__* allPgXact ;
 TYPE_3__* allProcs ;
 scalar_t__ palloc (int) ;
 TYPE_1__* procArray ;

VirtualTransactionId *
GetCurrentVirtualXIDs(TransactionId limitXmin, bool excludeXmin0,
       bool allDbs, int excludeVacuum,
       int *nvxids)
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

  if (proc == MyProc)
   continue;

  if (excludeVacuum & pgxact->vacuumFlags)
   continue;

  if (allDbs || proc->databaseId == MyDatabaseId)
  {

   TransactionId pxmin = UINT32_ACCESS_ONCE(pgxact->xmin);

   if (excludeXmin0 && !TransactionIdIsValid(pxmin))
    continue;





   if (!TransactionIdIsValid(limitXmin) ||
    TransactionIdPrecedesOrEquals(pxmin, limitXmin))
   {
    VirtualTransactionId vxid;

    GET_VXID_FROM_PGPROC(vxid, *proc);
    if (VirtualTransactionIdIsValid(vxid))
     vxids[count++] = vxid;
   }
  }
 }

 LWLockRelease(ProcArrayLock);

 *nvxids = count;
 return vxids;
}
