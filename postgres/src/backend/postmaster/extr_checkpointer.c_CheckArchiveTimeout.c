
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_time_t ;
typedef scalar_t__ XLogRecPtr ;


 int DEBUG1 ;
 scalar_t__ GetLastImportantRecPtr () ;
 scalar_t__ GetLastSegSwitchData (scalar_t__*) ;
 scalar_t__ Max (scalar_t__,scalar_t__) ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ RequestXLogSwitch (int) ;
 int XLogArchiveTimeout ;
 scalar_t__ XLogSegmentOffset (scalar_t__,int ) ;
 int elog (int ,char*,int) ;
 scalar_t__ last_xlog_switch_time ;
 scalar_t__ time (int *) ;
 int wal_segment_size ;

__attribute__((used)) static void
CheckArchiveTimeout(void)
{
 pg_time_t now;
 pg_time_t last_time;
 XLogRecPtr last_switch_lsn;

 if (XLogArchiveTimeout <= 0 || RecoveryInProgress())
  return;

 now = (pg_time_t) time(((void*)0));


 if ((int) (now - last_xlog_switch_time) < XLogArchiveTimeout)
  return;





 last_time = GetLastSegSwitchData(&last_switch_lsn);

 last_xlog_switch_time = Max(last_xlog_switch_time, last_time);


 if ((int) (now - last_xlog_switch_time) >= XLogArchiveTimeout)
 {





  if (GetLastImportantRecPtr() > last_switch_lsn)
  {
   XLogRecPtr switchpoint;


   switchpoint = RequestXLogSwitch(1);





   if (XLogSegmentOffset(switchpoint, wal_segment_size) != 0)
    elog(DEBUG1, "write-ahead log switch forced (archive_timeout=%d)",
      XLogArchiveTimeout);
  }





  last_xlog_switch_time = now;
 }
}
