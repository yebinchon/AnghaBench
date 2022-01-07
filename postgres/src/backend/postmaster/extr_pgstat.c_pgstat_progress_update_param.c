
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_5__ {int * st_progress_param; } ;
typedef TYPE_1__ PgBackendStatus ;


 int Assert (int) ;
 TYPE_1__* MyBEEntry ;
 int PGSTAT_BEGIN_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int PGSTAT_END_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int PGSTAT_NUM_PROGRESS_PARAM ;
 int pgstat_track_activities ;

void
pgstat_progress_update_param(int index, int64 val)
{
 volatile PgBackendStatus *beentry = MyBEEntry;

 Assert(index >= 0 && index < PGSTAT_NUM_PROGRESS_PARAM);

 if (!beentry || !pgstat_track_activities)
  return;

 PGSTAT_BEGIN_WRITE_ACTIVITY(beentry);
 beentry->st_progress_param[index] = val;
 PGSTAT_END_WRITE_ACTIVITY(beentry);
}
