
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgStat_GlobalStats ;


 int backend_read_statsfile () ;
 int globalStats ;

PgStat_GlobalStats *
pgstat_fetch_global(void)
{
 backend_read_statsfile();

 return &globalStats;
}
