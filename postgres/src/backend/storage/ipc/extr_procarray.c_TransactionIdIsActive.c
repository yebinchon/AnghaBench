
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_9__ {scalar_t__ pid; } ;
struct TYPE_8__ {int xid; } ;
struct TYPE_7__ {int numProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGXACT ;
typedef TYPE_3__ PGPROC ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;
 int RecentXmin ;
 scalar_t__ TransactionIdEquals (int ,int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int UINT32_ACCESS_ONCE (int ) ;
 TYPE_2__* allPgXact ;
 TYPE_3__* allProcs ;
 TYPE_1__* procArray ;

bool
TransactionIdIsActive(TransactionId xid)
{
 bool result = 0;
 ProcArrayStruct *arrayP = procArray;
 int i;





 if (TransactionIdPrecedes(xid, RecentXmin))
  return 0;

 LWLockAcquire(ProcArrayLock, LW_SHARED);

 for (i = 0; i < arrayP->numProcs; i++)
 {
  int pgprocno = arrayP->pgprocnos[i];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];
  TransactionId pxid;


  pxid = UINT32_ACCESS_ONCE(pgxact->xid);

  if (!TransactionIdIsValid(pxid))
   continue;

  if (proc->pid == 0)
   continue;

  if (TransactionIdEquals(pxid, xid))
  {
   result = 1;
   break;
  }
 }

 LWLockRelease(ProcArrayLock);

 return result;
}
