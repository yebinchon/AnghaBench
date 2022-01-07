
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ TimestampTz ;
struct TYPE_6__ {scalar_t__ clock_time; scalar_t__ cutoff_time; int databaseid; } ;
struct TYPE_5__ {scalar_t__ stats_timestamp; int databaseid; } ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef TYPE_2__ PgStat_MsgInquiry ;


 int DEBUG2 ;
 scalar_t__ GetCurrentTimestamp () ;
 int LOG ;
 int elog (int ,char*,char*,...) ;
 int lappend_oid (int ,int ) ;
 scalar_t__ list_member_oid (int ,int ) ;
 int pending_write_requests ;
 int pfree (char*) ;
 TYPE_1__* pgstat_get_db_entry (int ,int) ;
 char* pstrdup (int ) ;
 int timestamptz_to_str (scalar_t__) ;

__attribute__((used)) static void
pgstat_recv_inquiry(PgStat_MsgInquiry *msg, int len)
{
 PgStat_StatDBEntry *dbentry;

 elog(DEBUG2, "received inquiry for database %u", msg->databaseid);
 if (list_member_oid(pending_write_requests, msg->databaseid))
  return;
 dbentry = pgstat_get_db_entry(msg->databaseid, 0);
 if (dbentry == ((void*)0))
 {







 }
 else if (msg->clock_time < dbentry->stats_timestamp)
 {
  TimestampTz cur_ts = GetCurrentTimestamp();

  if (cur_ts < dbentry->stats_timestamp)
  {




   char *writetime;
   char *mytime;


   writetime = pstrdup(timestamptz_to_str(dbentry->stats_timestamp));
   mytime = pstrdup(timestamptz_to_str(cur_ts));
   elog(LOG,
     "stats_timestamp %s is later than collector's time %s for database %u",
     writetime, mytime, dbentry->databaseid);
   pfree(writetime);
   pfree(mytime);
  }
  else
  {




   return;
  }
 }
 else if (msg->cutoff_time <= dbentry->stats_timestamp)
 {

  return;
 }




 pending_write_requests = lappend_oid(pending_write_requests,
           msg->databaseid);
}
