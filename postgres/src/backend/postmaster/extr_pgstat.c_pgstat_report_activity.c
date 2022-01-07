
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* TimestampTz ;
struct TYPE_8__ {scalar_t__ wait_event_info; } ;
struct TYPE_7__ {scalar_t__ st_state; char* st_activity_raw; void* st_activity_start_timestamp; void* st_state_start_timestamp; scalar_t__ st_xact_start_timestamp; } ;
typedef TYPE_1__ PgBackendStatus ;
typedef TYPE_2__ PGPROC ;
typedef scalar_t__ BackendState ;


 void* GetCurrentStatementStartTimestamp () ;
 void* GetCurrentTimestamp () ;
 int Min (int ,scalar_t__) ;
 TYPE_1__* MyBEEntry ;
 TYPE_2__* MyProc ;
 int PGSTAT_BEGIN_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int PGSTAT_END_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 scalar_t__ STATE_DISABLED ;
 int TRACE_POSTGRESQL_STATEMENT_STATUS (char const*) ;
 int memcpy (char*,char const*,int) ;
 int pgstat_track_activities ;
 scalar_t__ pgstat_track_activity_query_size ;
 int strlen (char const*) ;

void
pgstat_report_activity(BackendState state, const char *cmd_str)
{
 volatile PgBackendStatus *beentry = MyBEEntry;
 TimestampTz start_timestamp;
 TimestampTz current_timestamp;
 int len = 0;

 TRACE_POSTGRESQL_STATEMENT_STATUS(cmd_str);

 if (!beentry)
  return;

 if (!pgstat_track_activities)
 {
  if (beentry->st_state != STATE_DISABLED)
  {
   volatile PGPROC *proc = MyProc;






   PGSTAT_BEGIN_WRITE_ACTIVITY(beentry);
   beentry->st_state = STATE_DISABLED;
   beentry->st_state_start_timestamp = 0;
   beentry->st_activity_raw[0] = '\0';
   beentry->st_activity_start_timestamp = 0;

   beentry->st_xact_start_timestamp = 0;
   proc->wait_event_info = 0;
   PGSTAT_END_WRITE_ACTIVITY(beentry);
  }
  return;
 }





 start_timestamp = GetCurrentStatementStartTimestamp();
 if (cmd_str != ((void*)0))
 {





  len = Min(strlen(cmd_str), pgstat_track_activity_query_size - 1);
 }
 current_timestamp = GetCurrentTimestamp();




 PGSTAT_BEGIN_WRITE_ACTIVITY(beentry);

 beentry->st_state = state;
 beentry->st_state_start_timestamp = current_timestamp;

 if (cmd_str != ((void*)0))
 {
  memcpy((char *) beentry->st_activity_raw, cmd_str, len);
  beentry->st_activity_raw[len] = '\0';
  beentry->st_activity_start_timestamp = start_timestamp;
 }

 PGSTAT_END_WRITE_ACTIVITY(beentry);
}
