
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ backendId; scalar_t__ localTransactionId; } ;
typedef TYPE_1__ VirtualTransactionId ;
typedef int TransactionId ;
struct TYPE_14__ {int xmin; } ;
struct TYPE_13__ {scalar_t__ backendId; scalar_t__ lxid; scalar_t__ databaseId; } ;
struct TYPE_12__ {int vacuumFlags; int xmin; } ;
struct TYPE_11__ {int numProcs; int* pgprocnos; } ;
typedef TYPE_2__ ProcArrayStruct ;
typedef TYPE_3__ PGXACT ;
typedef TYPE_4__ PGPROC ;


 int Assert (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 scalar_t__ MyDatabaseId ;
 TYPE_9__* MyPgXact ;
 int PROC_IN_VACUUM ;
 int ProcArrayLock ;
 int TransactionIdIsNormal (int ) ;
 int TransactionIdPrecedesOrEquals (int ,int ) ;
 int TransactionXmin ;
 int UINT32_ACCESS_ONCE (int ) ;
 TYPE_3__* allPgXact ;
 TYPE_4__* allProcs ;
 TYPE_2__* procArray ;

bool
ProcArrayInstallImportedXmin(TransactionId xmin,
        VirtualTransactionId *sourcevxid)
{
 bool result = 0;
 ProcArrayStruct *arrayP = procArray;
 int index;

 Assert(TransactionIdIsNormal(xmin));
 if (!sourcevxid)
  return 0;


 LWLockAcquire(ProcArrayLock, LW_SHARED);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];
  TransactionId xid;


  if (pgxact->vacuumFlags & PROC_IN_VACUUM)
   continue;


  if (proc->backendId != sourcevxid->backendId)
   continue;
  if (proc->lxid != sourcevxid->localTransactionId)
   continue;







  if (proc->databaseId != MyDatabaseId)
   continue;




  xid = UINT32_ACCESS_ONCE(pgxact->xmin);
  if (!TransactionIdIsNormal(xid) ||
   !TransactionIdPrecedesOrEquals(xid, xmin))
   continue;







  MyPgXact->xmin = TransactionXmin = xmin;

  result = 1;
  break;
 }

 LWLockRelease(ProcArrayLock);

 return result;
}
