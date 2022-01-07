
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int ERRCODE_ACTIVE_SQL_TRANSACTION ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 scalar_t__ FirstSnapshotSet ;
 int GUC_check_errcode (int ) ;
 int GUC_check_errmsg (char*) ;
 int InitializingParallelWorker ;
 scalar_t__ IsSubTransaction () ;
 scalar_t__ IsTransactionState () ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ XactReadOnly ;

bool
check_transaction_read_only(bool *newval, void **extra, GucSource source)
{
 if (*newval == 0 && XactReadOnly && IsTransactionState() && !InitializingParallelWorker)
 {

  if (IsSubTransaction())
  {
   GUC_check_errcode(ERRCODE_ACTIVE_SQL_TRANSACTION);
   GUC_check_errmsg("cannot set transaction read-write mode inside a read-only transaction");
   return 0;
  }

  if (FirstSnapshotSet)
  {
   GUC_check_errcode(ERRCODE_ACTIVE_SQL_TRANSACTION);
   GUC_check_errmsg("transaction read-write mode must be set before any query");
   return 0;
  }

  if (RecoveryInProgress())
  {
   GUC_check_errcode(ERRCODE_FEATURE_NOT_SUPPORTED);
   GUC_check_errmsg("cannot set transaction read-write mode during recovery");
   return 0;
  }
 }

 return 1;
}
