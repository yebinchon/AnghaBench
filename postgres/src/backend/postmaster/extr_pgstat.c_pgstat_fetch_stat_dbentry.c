
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgStat_StatDBEntry ;
typedef int Oid ;


 int HASH_FIND ;
 int backend_read_statsfile () ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int pgStatDBHash ;

PgStat_StatDBEntry *
pgstat_fetch_stat_dbentry(Oid dbid)
{




 backend_read_statsfile();




 return (PgStat_StatDBEntry *) hash_search(pgStatDBHash,
             (void *) &dbid,
             HASH_FIND, ((void*)0));
}
