
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xlrec ;
struct TYPE_3__ {scalar_t__ track_commit_timestamp; scalar_t__ wal_log_hints; scalar_t__ wal_level; scalar_t__ max_locks_per_xact; scalar_t__ max_prepared_xacts; scalar_t__ max_wal_senders; scalar_t__ max_worker_processes; scalar_t__ MaxConnections; } ;
typedef TYPE_1__ xl_parameter_change ;
typedef int XLogRecPtr ;
struct TYPE_4__ {scalar_t__ wal_level; scalar_t__ wal_log_hints; scalar_t__ MaxConnections; scalar_t__ max_worker_processes; scalar_t__ max_wal_senders; scalar_t__ max_prepared_xacts; scalar_t__ max_locks_per_xact; scalar_t__ track_commit_timestamp; } ;


 TYPE_2__* ControlFile ;
 scalar_t__ MaxConnections ;
 int RM_XLOG_ID ;
 int UpdateControlFile () ;
 int XLOG_PARAMETER_CHANGE ;
 int XLogBeginInsert () ;
 int XLogFlush (int ) ;
 int XLogInsert (int ,int ) ;
 scalar_t__ XLogIsNeeded () ;
 int XLogRegisterData (char*,int) ;
 scalar_t__ max_locks_per_xact ;
 scalar_t__ max_prepared_xacts ;
 scalar_t__ max_wal_senders ;
 scalar_t__ max_worker_processes ;
 scalar_t__ track_commit_timestamp ;
 scalar_t__ wal_level ;
 scalar_t__ wal_log_hints ;

__attribute__((used)) static void
XLogReportParameters(void)
{
 if (wal_level != ControlFile->wal_level ||
  wal_log_hints != ControlFile->wal_log_hints ||
  MaxConnections != ControlFile->MaxConnections ||
  max_worker_processes != ControlFile->max_worker_processes ||
  max_wal_senders != ControlFile->max_wal_senders ||
  max_prepared_xacts != ControlFile->max_prepared_xacts ||
  max_locks_per_xact != ControlFile->max_locks_per_xact ||
  track_commit_timestamp != ControlFile->track_commit_timestamp)
 {







  if (wal_level != ControlFile->wal_level || XLogIsNeeded())
  {
   xl_parameter_change xlrec;
   XLogRecPtr recptr;

   xlrec.MaxConnections = MaxConnections;
   xlrec.max_worker_processes = max_worker_processes;
   xlrec.max_wal_senders = max_wal_senders;
   xlrec.max_prepared_xacts = max_prepared_xacts;
   xlrec.max_locks_per_xact = max_locks_per_xact;
   xlrec.wal_level = wal_level;
   xlrec.wal_log_hints = wal_log_hints;
   xlrec.track_commit_timestamp = track_commit_timestamp;

   XLogBeginInsert();
   XLogRegisterData((char *) &xlrec, sizeof(xlrec));

   recptr = XLogInsert(RM_XLOG_ID, XLOG_PARAMETER_CHANGE);
   XLogFlush(recptr);
  }

  ControlFile->MaxConnections = MaxConnections;
  ControlFile->max_worker_processes = max_worker_processes;
  ControlFile->max_wal_senders = max_wal_senders;
  ControlFile->max_prepared_xacts = max_prepared_xacts;
  ControlFile->max_locks_per_xact = max_locks_per_xact;
  ControlFile->wal_level = wal_level;
  ControlFile->wal_log_hints = wal_log_hints;
  ControlFile->track_commit_timestamp = track_commit_timestamp;
  UpdateControlFile();
 }
}
