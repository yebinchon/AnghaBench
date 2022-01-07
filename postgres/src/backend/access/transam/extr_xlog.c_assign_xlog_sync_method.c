
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PANIC ;
 int ThisTimeLineID ;
 int WAIT_EVENT_WAL_SYNC_METHOD_ASSIGN ;
 int XLogFileClose () ;
 int XLogFileNameP (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 scalar_t__ get_sync_bit (int) ;
 scalar_t__ openLogFile ;
 int openLogSegNo ;
 scalar_t__ pg_fsync (scalar_t__) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int sync_method ;

void
assign_xlog_sync_method(int new_sync_method, void *extra)
{
 if (sync_method != new_sync_method)
 {






  if (openLogFile >= 0)
  {
   pgstat_report_wait_start(WAIT_EVENT_WAL_SYNC_METHOD_ASSIGN);
   if (pg_fsync(openLogFile) != 0)
    ereport(PANIC,
      (errcode_for_file_access(),
       errmsg("could not fsync file \"%s\": %m",
        XLogFileNameP(ThisTimeLineID, openLogSegNo))));
   pgstat_report_wait_end();
   if (get_sync_bit(sync_method) != get_sync_bit(new_sync_method))
    XLogFileClose();
  }
 }
}
