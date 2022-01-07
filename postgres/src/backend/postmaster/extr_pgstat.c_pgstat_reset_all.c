
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGSTAT_STAT_PERMANENT_DIRECTORY ;
 int pgstat_reset_remove_files (int ) ;
 int pgstat_stat_directory ;

void
pgstat_reset_all(void)
{
 pgstat_reset_remove_files(pgstat_stat_directory);
 pgstat_reset_remove_files(PGSTAT_STAT_PERMANENT_DIRECTORY);
}
