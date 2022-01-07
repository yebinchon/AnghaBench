
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_progress_param; int st_progress_command_target; int st_progress_command; } ;
typedef int ProgressCommandType ;
typedef TYPE_1__ PgBackendStatus ;
typedef int Oid ;


 int MemSet (int *,int ,int) ;
 TYPE_1__* MyBEEntry ;
 int PGSTAT_BEGIN_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int PGSTAT_END_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int pgstat_track_activities ;

void
pgstat_progress_start_command(ProgressCommandType cmdtype, Oid relid)
{
 volatile PgBackendStatus *beentry = MyBEEntry;

 if (!beentry || !pgstat_track_activities)
  return;

 PGSTAT_BEGIN_WRITE_ACTIVITY(beentry);
 beentry->st_progress_command = cmdtype;
 beentry->st_progress_command_target = relid;
 MemSet(&beentry->st_progress_param, 0, sizeof(beentry->st_progress_param));
 PGSTAT_END_WRITE_ACTIVITY(beentry);
}
