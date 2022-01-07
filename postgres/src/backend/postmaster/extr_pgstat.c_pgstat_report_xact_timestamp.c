
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_5__ {int st_xact_start_timestamp; } ;
typedef TYPE_1__ PgBackendStatus ;


 TYPE_1__* MyBEEntry ;
 int PGSTAT_BEGIN_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int PGSTAT_END_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int pgstat_track_activities ;

void
pgstat_report_xact_timestamp(TimestampTz tstamp)
{
 volatile PgBackendStatus *beentry = MyBEEntry;

 if (!pgstat_track_activities || !beentry)
  return;






 PGSTAT_BEGIN_WRITE_ACTIVITY(beentry);

 beentry->st_xact_start_timestamp = tstamp;

 PGSTAT_END_WRITE_ACTIVITY(beentry);
}
