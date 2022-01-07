
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* pg_time_t ;
struct TYPE_4__ {int redo; void* time; } ;
struct TYPE_5__ {int backupEndRequired; int wal_log_hints; int track_commit_timestamp; int MaxConnections; int max_wal_senders; int max_worker_processes; int max_locks_per_xact; scalar_t__ max_prepared_xacts; int wal_level; scalar_t__ backupEndPoint; scalar_t__ backupStartPoint; scalar_t__ minRecoveryPointTLI; scalar_t__ minRecoveryPoint; TYPE_1__ checkPointCopy; int checkPoint; void* time; int state; } ;


 TYPE_2__ ControlFile ;
 int DB_SHUTDOWNED ;
 int SizeOfXLogLongPHD ;
 int WAL_LEVEL_MINIMAL ;
 int WalSegSz ;
 int XLogSegNoOffsetToRecPtr (int ,int ,int ,int ) ;
 int newXlogSegNo ;
 scalar_t__ time (int *) ;
 int update_controlfile (char*,TYPE_2__*,int) ;

__attribute__((used)) static void
RewriteControlFile(void)
{




 XLogSegNoOffsetToRecPtr(newXlogSegNo, SizeOfXLogLongPHD, WalSegSz,
       ControlFile.checkPointCopy.redo);
 ControlFile.checkPointCopy.time = (pg_time_t) time(((void*)0));

 ControlFile.state = DB_SHUTDOWNED;
 ControlFile.time = (pg_time_t) time(((void*)0));
 ControlFile.checkPoint = ControlFile.checkPointCopy.redo;
 ControlFile.minRecoveryPoint = 0;
 ControlFile.minRecoveryPointTLI = 0;
 ControlFile.backupStartPoint = 0;
 ControlFile.backupEndPoint = 0;
 ControlFile.backupEndRequired = 0;






 ControlFile.wal_level = WAL_LEVEL_MINIMAL;
 ControlFile.wal_log_hints = 0;
 ControlFile.track_commit_timestamp = 0;
 ControlFile.MaxConnections = 100;
 ControlFile.max_wal_senders = 10;
 ControlFile.max_worker_processes = 8;
 ControlFile.max_prepared_xacts = 0;
 ControlFile.max_locks_per_xact = 64;


 update_controlfile(".", &ControlFile, 1);
}
