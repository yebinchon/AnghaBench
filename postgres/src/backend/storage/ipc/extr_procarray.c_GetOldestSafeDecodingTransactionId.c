
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_8__ {int nextFullXid; } ;
struct TYPE_7__ {int xid; } ;
struct TYPE_6__ {int numProcs; int* pgprocnos; int replication_slot_catalog_xmin; int replication_slot_xmin; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGXACT ;


 int Assert (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockHeldByMe (int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;
 int RecoveryInProgress () ;
 TYPE_5__* ShmemVariableCache ;
 int TransactionIdIsNormal (int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int UINT32_ACCESS_ONCE (int ) ;
 int XidFromFullTransactionId (int ) ;
 int XidGenLock ;
 TYPE_2__* allPgXact ;
 TYPE_1__* procArray ;

TransactionId
GetOldestSafeDecodingTransactionId(bool catalogOnly)
{
 ProcArrayStruct *arrayP = procArray;
 TransactionId oldestSafeXid;
 int index;
 bool recovery_in_progress = RecoveryInProgress();

 Assert(LWLockHeldByMe(ProcArrayLock));
 LWLockAcquire(XidGenLock, LW_SHARED);
 oldestSafeXid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);
 if (TransactionIdIsValid(procArray->replication_slot_xmin) &&
  TransactionIdPrecedes(procArray->replication_slot_xmin,
         oldestSafeXid))
  oldestSafeXid = procArray->replication_slot_xmin;

 if (catalogOnly &&
  TransactionIdIsValid(procArray->replication_slot_catalog_xmin) &&
  TransactionIdPrecedes(procArray->replication_slot_catalog_xmin,
         oldestSafeXid))
  oldestSafeXid = procArray->replication_slot_catalog_xmin;
 if (!recovery_in_progress)
 {



  for (index = 0; index < arrayP->numProcs; index++)
  {
   int pgprocno = arrayP->pgprocnos[index];
   PGXACT *pgxact = &allPgXact[pgprocno];
   TransactionId xid;


   xid = UINT32_ACCESS_ONCE(pgxact->xid);

   if (!TransactionIdIsNormal(xid))
    continue;

   if (TransactionIdPrecedes(xid, oldestSafeXid))
    oldestSafeXid = xid;
  }
 }

 LWLockRelease(XidGenLock);

 return oldestSafeXid;
}
