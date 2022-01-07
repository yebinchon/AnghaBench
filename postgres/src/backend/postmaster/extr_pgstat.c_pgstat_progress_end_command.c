
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ st_progress_command; int st_progress_command_target; } ;
typedef TYPE_1__ PgBackendStatus ;


 int InvalidOid ;
 TYPE_1__* MyBEEntry ;
 int PGSTAT_BEGIN_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int PGSTAT_END_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 scalar_t__ PROGRESS_COMMAND_INVALID ;
 int pgstat_track_activities ;

void
pgstat_progress_end_command(void)
{
 volatile PgBackendStatus *beentry = MyBEEntry;

 if (!beentry || !pgstat_track_activities)
  return;

 if (beentry->st_progress_command == PROGRESS_COMMAND_INVALID)
  return;

 PGSTAT_BEGIN_WRITE_ACTIVITY(beentry);
 beentry->st_progress_command = PROGRESS_COMMAND_INVALID;
 beentry->st_progress_command_target = InvalidOid;
 PGSTAT_END_WRITE_ACTIVITY(beentry);
}
