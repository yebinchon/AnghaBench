
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_READ_ONLY_SQL_TRANSACTION ;
 int ERROR ;
 scalar_t__ RecoveryInProgress () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ max_replication_slots ;
 int superuser () ;

__attribute__((used)) static void
replorigin_check_prerequisites(bool check_slots, bool recoveryOK)
{
 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("only superusers can query or manipulate replication origins")));

 if (check_slots && max_replication_slots == 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot query or manipulate replication origin when max_replication_slots = 0")));

 if (!recoveryOK && RecoveryInProgress())
  ereport(ERROR,
    (errcode(ERRCODE_READ_ONLY_SQL_TRANSACTION),
     errmsg("cannot manipulate replication origins during recovery")));

}
