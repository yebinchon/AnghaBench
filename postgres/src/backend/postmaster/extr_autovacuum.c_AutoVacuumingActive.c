
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autovacuum_start_daemon ;
 int pgstat_track_counts ;

bool
AutoVacuumingActive(void)
{
 if (!autovacuum_start_daemon || !pgstat_track_counts)
  return 0;
 return 1;
}
