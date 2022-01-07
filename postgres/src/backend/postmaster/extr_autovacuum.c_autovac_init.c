
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARNING ;
 scalar_t__ autovacuum_start_daemon ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int pgstat_track_counts ;

void
autovac_init(void)
{
 if (autovacuum_start_daemon && !pgstat_track_counts)
  ereport(WARNING,
    (errmsg("autovacuum not started because of misconfiguration"),
     errhint("Enable the \"track_counts\" option.")));
}
