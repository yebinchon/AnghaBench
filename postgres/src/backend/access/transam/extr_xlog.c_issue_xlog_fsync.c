
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogSegNo ;


 int PANIC ;





 int ThisTimeLineID ;
 int WAIT_EVENT_WAL_SYNC ;
 int XLogFileNameP (int ,int ) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 int pg_fdatasync (int) ;
 int pg_fsync_no_writethrough (int) ;
 int pg_fsync_writethrough (int) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int sync_method ;

void
issue_xlog_fsync(int fd, XLogSegNo segno)
{
 pgstat_report_wait_start(WAIT_EVENT_WAL_SYNC);
 switch (sync_method)
 {
  case 131:
   if (pg_fsync_no_writethrough(fd) != 0)
    ereport(PANIC,
      (errcode_for_file_access(),
       errmsg("could not fsync file \"%s\": %m",
        XLogFileNameP(ThisTimeLineID, segno))));
   break;
  case 129:
  case 128:

   break;
  default:
   elog(PANIC, "unrecognized wal_sync_method: %d", sync_method);
   break;
 }
 pgstat_report_wait_end();
}
