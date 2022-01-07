
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int GetCurrentTimestamp () ;
 scalar_t__ IsAutoVacuumLauncherProcess () ;
 int STATS_READ_DELAY ;
 int TimestampDifferenceExceeds (int ,int ,int ) ;
 int pgstat_clear_snapshot () ;

__attribute__((used)) static void
autovac_refresh_stats(void)
{
 if (IsAutoVacuumLauncherProcess())
 {
  static TimestampTz last_read = 0;
  TimestampTz current_time;

  current_time = GetCurrentTimestamp();

  if (!TimestampDifferenceExceeds(last_read, current_time,
          STATS_READ_DELAY))
   return;

  last_read = current_time;
 }

 pgstat_clear_snapshot();
}
