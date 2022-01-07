
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int localTransactionId; int backendId; } ;
typedef TYPE_1__ VirtualTransactionId ;
typedef int TransactionId ;
struct TYPE_15__ {scalar_t__ pid; scalar_t__ databaseId; } ;
struct TYPE_14__ {int xmin; } ;
struct TYPE_13__ {int maxProcs; int numProcs; int* pgprocnos; } ;
typedef TYPE_2__ ProcArrayStruct ;
typedef TYPE_3__ PGXACT ;
typedef TYPE_4__ PGPROC ;
typedef scalar_t__ Oid ;


 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int GET_VXID_FROM_PGPROC (TYPE_1__,TYPE_4__) ;
 int InvalidBackendId ;
 int InvalidLocalTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int OidIsValid (scalar_t__) ;
 int ProcArrayLock ;
 int TransactionIdFollows (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int UINT32_ACCESS_ONCE (int ) ;
 scalar_t__ VirtualTransactionIdIsValid (TYPE_1__) ;
 TYPE_3__* allPgXact ;
 TYPE_4__* allProcs ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ malloc (int) ;
 TYPE_2__* procArray ;

VirtualTransactionId *
GetConflictingVirtualXIDs(TransactionId limitXmin, Oid dbOid)
{
 static VirtualTransactionId *vxids;
 ProcArrayStruct *arrayP = procArray;
 int count = 0;
 int index;






 if (vxids == ((void*)0))
 {
  vxids = (VirtualTransactionId *)
   malloc(sizeof(VirtualTransactionId) * (arrayP->maxProcs + 1));
  if (vxids == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
 }

 LWLockAcquire(ProcArrayLock, LW_SHARED);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];


  if (proc->pid == 0)
   continue;

  if (!OidIsValid(dbOid) ||
   proc->databaseId == dbOid)
  {

   TransactionId pxmin = UINT32_ACCESS_ONCE(pgxact->xmin);
   if (!TransactionIdIsValid(limitXmin) ||
    (TransactionIdIsValid(pxmin) && !TransactionIdFollows(pxmin, limitXmin)))
   {
    VirtualTransactionId vxid;

    GET_VXID_FROM_PGPROC(vxid, *proc);
    if (VirtualTransactionIdIsValid(vxid))
     vxids[count++] = vxid;
   }
  }
 }

 LWLockRelease(ProcArrayLock);


 vxids[count].backendId = InvalidBackendId;
 vxids[count].localTransactionId = InvalidLocalTransactionId;

 return vxids;
}
