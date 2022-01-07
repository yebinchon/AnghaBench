
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wal_level; int max_locks_per_xact; int max_prepared_xacts; int max_wal_senders; int max_worker_processes; int MaxConnections; } ;


 scalar_t__ ArchiveRecoveryRequested ;
 TYPE_1__* ControlFile ;
 int ERROR ;
 scalar_t__ EnableHotStandby ;
 int MaxConnections ;
 int RecoveryRequiresIntParameter (char*,int ,int ) ;
 scalar_t__ WAL_LEVEL_MINIMAL ;
 scalar_t__ WAL_LEVEL_REPLICA ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int max_locks_per_xact ;
 int max_prepared_xacts ;
 int max_wal_senders ;
 int max_worker_processes ;

__attribute__((used)) static void
CheckRequiredParameterValues(void)
{




 if (ArchiveRecoveryRequested && ControlFile->wal_level == WAL_LEVEL_MINIMAL)
 {
  ereport(WARNING,
    (errmsg("WAL was generated with wal_level=minimal, data may be missing"),
     errhint("This happens if you temporarily set wal_level=minimal without taking a new base backup.")));
 }





 if (ArchiveRecoveryRequested && EnableHotStandby)
 {
  if (ControlFile->wal_level < WAL_LEVEL_REPLICA)
   ereport(ERROR,
     (errmsg("hot standby is not possible because wal_level was not set to \"replica\" or higher on the master server"),
      errhint("Either set wal_level to \"replica\" on the master, or turn off hot_standby here.")));


  RecoveryRequiresIntParameter("max_connections",
          MaxConnections,
          ControlFile->MaxConnections);
  RecoveryRequiresIntParameter("max_worker_processes",
          max_worker_processes,
          ControlFile->max_worker_processes);
  RecoveryRequiresIntParameter("max_wal_senders",
          max_wal_senders,
          ControlFile->max_wal_senders);
  RecoveryRequiresIntParameter("max_prepared_transactions",
          max_prepared_xacts,
          ControlFile->max_prepared_xacts);
  RecoveryRequiresIntParameter("max_locks_per_transaction",
          max_locks_per_xact,
          ControlFile->max_locks_per_xact);
 }
}
