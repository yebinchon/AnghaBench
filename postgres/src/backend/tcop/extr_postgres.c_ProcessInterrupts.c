
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 scalar_t__ ClientAuthInProgress ;
 scalar_t__ ClientConnectionLost ;
 scalar_t__ CritSectionCount ;
 int DEBUG1 ;
 scalar_t__ DestNone ;
 scalar_t__ DestRemote ;
 scalar_t__ DoingCommandRead ;
 int ERRCODE_ADMIN_SHUTDOWN ;
 int ERRCODE_CONNECTION_FAILURE ;
 int ERRCODE_DATABASE_DROPPED ;
 int ERRCODE_IDLE_IN_TRANSACTION_SESSION_TIMEOUT ;
 int ERRCODE_LOCK_NOT_AVAILABLE ;
 int ERRCODE_QUERY_CANCELED ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int FATAL ;
 int HandleParallelMessages () ;
 scalar_t__ IdleInTransactionSessionTimeout ;
 int IdleInTransactionSessionTimeoutPending ;
 scalar_t__ InterruptHoldoffCount ;
 int InterruptPending ;
 scalar_t__ IsAutoVacuumWorkerProcess () ;
 scalar_t__ IsLogicalLauncher () ;
 scalar_t__ IsLogicalWorker () ;
 int LOCK_TIMEOUT ;
 int LockErrorCleanup () ;
 scalar_t__ PROCSIG_RECOVERY_CONFLICT_DATABASE ;
 scalar_t__ ParallelMessagePending ;
 int ProcDiePending ;
 scalar_t__ QueryCancelHoldoffCount ;
 int QueryCancelPending ;
 int RecoveryConflictPending ;
 scalar_t__ RecoveryConflictReason ;
 scalar_t__ RecoveryConflictRetryable ;
 int STATEMENT_TIMEOUT ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_recovery_conflict () ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ get_timeout_finish_time (int ) ;
 int get_timeout_indicator (int ,int) ;
 int pgstat_report_recovery_conflict (scalar_t__) ;
 int proc_exit (int) ;
 scalar_t__ whereToSendOutput ;

void
ProcessInterrupts(void)
{

 if (InterruptHoldoffCount != 0 || CritSectionCount != 0)
  return;
 InterruptPending = 0;

 if (ProcDiePending)
 {
  ProcDiePending = 0;
  QueryCancelPending = 0;
  LockErrorCleanup();

  if (ClientAuthInProgress && whereToSendOutput == DestRemote)
   whereToSendOutput = DestNone;
  if (ClientAuthInProgress)
   ereport(FATAL,
     (errcode(ERRCODE_QUERY_CANCELED),
      errmsg("canceling authentication due to timeout")));
  else if (IsAutoVacuumWorkerProcess())
   ereport(FATAL,
     (errcode(ERRCODE_ADMIN_SHUTDOWN),
      errmsg("terminating autovacuum process due to administrator command")));
  else if (IsLogicalWorker())
   ereport(FATAL,
     (errcode(ERRCODE_ADMIN_SHUTDOWN),
      errmsg("terminating logical replication worker due to administrator command")));
  else if (IsLogicalLauncher())
  {
   ereport(DEBUG1,
     (errmsg("logical replication launcher shutting down")));





   proc_exit(1);
  }
  else if (RecoveryConflictPending && RecoveryConflictRetryable)
  {
   pgstat_report_recovery_conflict(RecoveryConflictReason);
   ereport(FATAL,
     (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
      errmsg("terminating connection due to conflict with recovery"),
      errdetail_recovery_conflict()));
  }
  else if (RecoveryConflictPending)
  {

   Assert(RecoveryConflictReason == PROCSIG_RECOVERY_CONFLICT_DATABASE);
   pgstat_report_recovery_conflict(RecoveryConflictReason);
   ereport(FATAL,
     (errcode(ERRCODE_DATABASE_DROPPED),
      errmsg("terminating connection due to conflict with recovery"),
      errdetail_recovery_conflict()));
  }
  else
   ereport(FATAL,
     (errcode(ERRCODE_ADMIN_SHUTDOWN),
      errmsg("terminating connection due to administrator command")));
 }
 if (ClientConnectionLost)
 {
  QueryCancelPending = 0;
  LockErrorCleanup();

  whereToSendOutput = DestNone;
  ereport(FATAL,
    (errcode(ERRCODE_CONNECTION_FAILURE),
     errmsg("connection to client lost")));
 }







 if (RecoveryConflictPending && DoingCommandRead)
 {
  QueryCancelPending = 0;
  RecoveryConflictPending = 0;
  LockErrorCleanup();
  pgstat_report_recovery_conflict(RecoveryConflictReason);
  ereport(FATAL,
    (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
     errmsg("terminating connection due to conflict with recovery"),
     errdetail_recovery_conflict(),
     errhint("In a moment you should be able to reconnect to the"
       " database and repeat your command.")));
 }







 if (QueryCancelPending && QueryCancelHoldoffCount != 0)
 {




  InterruptPending = 1;
 }
 else if (QueryCancelPending)
 {
  bool lock_timeout_occurred;
  bool stmt_timeout_occurred;

  QueryCancelPending = 0;





  lock_timeout_occurred = get_timeout_indicator(LOCK_TIMEOUT, 1);
  stmt_timeout_occurred = get_timeout_indicator(STATEMENT_TIMEOUT, 1);







  if (lock_timeout_occurred && stmt_timeout_occurred &&
   get_timeout_finish_time(STATEMENT_TIMEOUT) < get_timeout_finish_time(LOCK_TIMEOUT))
   lock_timeout_occurred = 0;

  if (lock_timeout_occurred)
  {
   LockErrorCleanup();
   ereport(ERROR,
     (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
      errmsg("canceling statement due to lock timeout")));
  }
  if (stmt_timeout_occurred)
  {
   LockErrorCleanup();
   ereport(ERROR,
     (errcode(ERRCODE_QUERY_CANCELED),
      errmsg("canceling statement due to statement timeout")));
  }
  if (IsAutoVacuumWorkerProcess())
  {
   LockErrorCleanup();
   ereport(ERROR,
     (errcode(ERRCODE_QUERY_CANCELED),
      errmsg("canceling autovacuum task")));
  }
  if (RecoveryConflictPending)
  {
   RecoveryConflictPending = 0;
   LockErrorCleanup();
   pgstat_report_recovery_conflict(RecoveryConflictReason);
   ereport(ERROR,
     (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
      errmsg("canceling statement due to conflict with recovery"),
      errdetail_recovery_conflict()));
  }






  if (!DoingCommandRead)
  {
   LockErrorCleanup();
   ereport(ERROR,
     (errcode(ERRCODE_QUERY_CANCELED),
      errmsg("canceling statement due to user request")));
  }
 }

 if (IdleInTransactionSessionTimeoutPending)
 {

  if (IdleInTransactionSessionTimeout > 0)
   ereport(FATAL,
     (errcode(ERRCODE_IDLE_IN_TRANSACTION_SESSION_TIMEOUT),
      errmsg("terminating connection due to idle-in-transaction timeout")));
  else
   IdleInTransactionSessionTimeoutPending = 0;

 }

 if (ParallelMessagePending)
  HandleParallelMessages();
}
