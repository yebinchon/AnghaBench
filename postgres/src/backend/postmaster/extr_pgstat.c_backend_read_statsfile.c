
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimestampTz ;
typedef int Oid ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ GetCurrentTimestamp () ;
 int InvalidOid ;
 scalar_t__ IsAutoVacuumLauncherProcess () ;
 scalar_t__ IsAutoVacuumWorkerProcess () ;
 int LOG ;
 int MyDatabaseId ;
 int PGSTAT_INQ_LOOP_COUNT ;
 int PGSTAT_POLL_LOOP_COUNT ;
 long PGSTAT_RETRY_DELAY ;
 int PGSTAT_STAT_INTERVAL ;
 scalar_t__ TimestampTzPlusMilliseconds (scalar_t__,int) ;
 int elog (int ,char*,char*,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int pfree (char*) ;
 scalar_t__ pgStatDBHash ;
 int pgStatRunningInCollector ;
 int pg_usleep (long) ;
 int pgstat_read_db_statsfile_timestamp (int ,int,scalar_t__*) ;
 scalar_t__ pgstat_read_statsfiles (int ,int,int) ;
 int pgstat_send_inquiry (scalar_t__,scalar_t__,int ) ;
 char* pstrdup (int ) ;
 int timestamptz_to_str (scalar_t__) ;

__attribute__((used)) static void
backend_read_statsfile(void)
{
 TimestampTz min_ts = 0;
 TimestampTz ref_ts = 0;
 Oid inquiry_db;
 int count;


 if (pgStatDBHash)
  return;
 Assert(!pgStatRunningInCollector);







 if (IsAutoVacuumLauncherProcess())
  inquiry_db = InvalidOid;
 else
  inquiry_db = MyDatabaseId;






 for (count = 0; count < PGSTAT_POLL_LOOP_COUNT; count++)
 {
  bool ok;
  TimestampTz file_ts = 0;
  TimestampTz cur_ts;

  CHECK_FOR_INTERRUPTS();

  ok = pgstat_read_db_statsfile_timestamp(inquiry_db, 0, &file_ts);

  cur_ts = GetCurrentTimestamp();

  if (count == 0 || cur_ts < ref_ts)
  {
   ref_ts = cur_ts;
   if (IsAutoVacuumWorkerProcess())
    min_ts = TimestampTzPlusMilliseconds(ref_ts,
              -PGSTAT_RETRY_DELAY);
   else
    min_ts = TimestampTzPlusMilliseconds(ref_ts,
              -PGSTAT_STAT_INTERVAL);
  }
  if (ok && file_ts > cur_ts)
  {





   if (file_ts >= TimestampTzPlusMilliseconds(cur_ts, 1000))
   {
    char *filetime;
    char *mytime;


    filetime = pstrdup(timestamptz_to_str(file_ts));
    mytime = pstrdup(timestamptz_to_str(cur_ts));
    elog(LOG, "stats collector's time %s is later than backend local time %s",
      filetime, mytime);
    pfree(filetime);
    pfree(mytime);
   }

   pgstat_send_inquiry(cur_ts, min_ts, inquiry_db);
   break;
  }


  if (ok && file_ts >= min_ts)
   break;


  if ((count % PGSTAT_INQ_LOOP_COUNT) == 0)
   pgstat_send_inquiry(cur_ts, min_ts, inquiry_db);

  pg_usleep(PGSTAT_RETRY_DELAY * 1000L);
 }

 if (count >= PGSTAT_POLL_LOOP_COUNT)
  ereport(LOG,
    (errmsg("using stale statistics instead of current ones "
      "because stats collector is not responding")));






 if (IsAutoVacuumLauncherProcess())
  pgStatDBHash = pgstat_read_statsfiles(InvalidOid, 0, 0);
 else
  pgStatDBHash = pgstat_read_statsfiles(MyDatabaseId, 0, 1);
}
