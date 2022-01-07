
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_17__ {int latestCompletedXid; } ;
struct TYPE_16__ {scalar_t__ databaseId; } ;
struct TYPE_15__ {int vacuumFlags; int xmin; int xid; } ;
struct TYPE_14__ {int numProcs; int* pgprocnos; int replication_slot_catalog_xmin; int replication_slot_xmin; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relisshared; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ ProcArrayStruct ;
typedef TYPE_4__ PGXACT ;
typedef TYPE_5__ PGPROC ;


 int Assert (int) ;
 int FirstNormalTransactionId ;
 int InvalidTransactionId ;
 int KnownAssignedXidsGetOldestXmin () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 scalar_t__ MyDatabaseId ;
 scalar_t__ NormalTransactionIdPrecedes (int ,int ) ;
 int PROCARRAY_PROC_FLAGS_MASK ;
 int PROCARRAY_SLOTS_XMIN ;
 int ProcArrayLock ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ RelationIsAccessibleInLogicalDecoding (TYPE_2__*) ;
 TYPE_9__* ShmemVariableCache ;
 int TransactionIdAdvance (int ) ;
 int TransactionIdIsNormal (int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int UINT32_ACCESS_ONCE (int ) ;
 TYPE_4__* allPgXact ;
 TYPE_5__* allProcs ;
 TYPE_3__* procArray ;
 scalar_t__ vacuum_defer_cleanup_age ;

TransactionId
GetOldestXmin(Relation rel, int flags)
{
 ProcArrayStruct *arrayP = procArray;
 TransactionId result;
 int index;
 bool allDbs;

 TransactionId replication_slot_xmin = InvalidTransactionId;
 TransactionId replication_slot_catalog_xmin = InvalidTransactionId;






 allDbs = rel == ((void*)0) || rel->rd_rel->relisshared;


 Assert(allDbs || !RecoveryInProgress());

 LWLockAcquire(ProcArrayLock, LW_SHARED);







 result = ShmemVariableCache->latestCompletedXid;
 Assert(TransactionIdIsNormal(result));
 TransactionIdAdvance(result);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];

  if (pgxact->vacuumFlags & (flags & PROCARRAY_PROC_FLAGS_MASK))
   continue;

  if (allDbs ||
   proc->databaseId == MyDatabaseId ||
   proc->databaseId == 0)
  {

   TransactionId xid = UINT32_ACCESS_ONCE(pgxact->xid);


   if (TransactionIdIsNormal(xid) &&
    TransactionIdPrecedes(xid, result))
    result = xid;
   xid = UINT32_ACCESS_ONCE(pgxact->xmin);
   if (TransactionIdIsNormal(xid) &&
    TransactionIdPrecedes(xid, result))
    result = xid;
  }
 }






 replication_slot_xmin = procArray->replication_slot_xmin;
 replication_slot_catalog_xmin = procArray->replication_slot_catalog_xmin;

 if (RecoveryInProgress())
 {




  TransactionId kaxmin = KnownAssignedXidsGetOldestXmin();

  LWLockRelease(ProcArrayLock);

  if (TransactionIdIsNormal(kaxmin) &&
   TransactionIdPrecedes(kaxmin, result))
   result = kaxmin;
 }
 else
 {



  LWLockRelease(ProcArrayLock);
  result -= vacuum_defer_cleanup_age;
  if (!TransactionIdIsNormal(result))
   result = FirstNormalTransactionId;
 }




 if (!(flags & PROCARRAY_SLOTS_XMIN) &&
  TransactionIdIsValid(replication_slot_xmin) &&
  NormalTransactionIdPrecedes(replication_slot_xmin, result))
  result = replication_slot_xmin;
 if (!(flags & PROCARRAY_SLOTS_XMIN) &&
  (rel == ((void*)0) ||
   RelationIsAccessibleInLogicalDecoding(rel)) &&
  TransactionIdIsValid(replication_slot_catalog_xmin) &&
  NormalTransactionIdPrecedes(replication_slot_catalog_xmin, result))
  result = replication_slot_catalog_xmin;

 return result;
}
