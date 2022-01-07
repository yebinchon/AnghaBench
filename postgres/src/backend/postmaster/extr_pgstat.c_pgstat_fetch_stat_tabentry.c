
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tables; } ;
typedef int PgStat_StatTabEntry ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef scalar_t__ Oid ;


 int HASH_FIND ;
 scalar_t__ InvalidOid ;
 scalar_t__ MyDatabaseId ;
 int backend_read_statsfile () ;
 scalar_t__ hash_search (int *,void*,int ,int *) ;
 int * pgStatDBHash ;

PgStat_StatTabEntry *
pgstat_fetch_stat_tabentry(Oid relid)
{
 Oid dbid;
 PgStat_StatDBEntry *dbentry;
 PgStat_StatTabEntry *tabentry;





 backend_read_statsfile();




 dbid = MyDatabaseId;
 dbentry = (PgStat_StatDBEntry *) hash_search(pgStatDBHash,
             (void *) &dbid,
             HASH_FIND, ((void*)0));
 if (dbentry != ((void*)0) && dbentry->tables != ((void*)0))
 {
  tabentry = (PgStat_StatTabEntry *) hash_search(dbentry->tables,
                (void *) &relid,
                HASH_FIND, ((void*)0));
  if (tabentry)
   return tabentry;
 }




 dbid = InvalidOid;
 dbentry = (PgStat_StatDBEntry *) hash_search(pgStatDBHash,
             (void *) &dbid,
             HASH_FIND, ((void*)0));
 if (dbentry != ((void*)0) && dbentry->tables != ((void*)0))
 {
  tabentry = (PgStat_StatTabEntry *) hash_search(dbentry->tables,
                (void *) &relid,
                HASH_FIND, ((void*)0));
  if (tabentry)
   return tabentry;
 }

 return ((void*)0);
}
