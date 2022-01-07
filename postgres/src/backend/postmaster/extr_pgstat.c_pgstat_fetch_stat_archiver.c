
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgStat_ArchiverStats ;


 int archiverStats ;
 int backend_read_statsfile () ;

PgStat_ArchiverStats *
pgstat_fetch_stat_archiver(void)
{
 backend_read_statsfile();

 return &archiverStats;
}
