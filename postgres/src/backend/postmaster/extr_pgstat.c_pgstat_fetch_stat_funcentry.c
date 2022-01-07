
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * functions; } ;
typedef int PgStat_StatFuncEntry ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef int Oid ;


 int HASH_FIND ;
 int MyDatabaseId ;
 int backend_read_statsfile () ;
 scalar_t__ hash_search (int *,void*,int ,int *) ;
 TYPE_1__* pgstat_fetch_stat_dbentry (int ) ;

PgStat_StatFuncEntry *
pgstat_fetch_stat_funcentry(Oid func_id)
{
 PgStat_StatDBEntry *dbentry;
 PgStat_StatFuncEntry *funcentry = ((void*)0);


 backend_read_statsfile();


 dbentry = pgstat_fetch_stat_dbentry(MyDatabaseId);
 if (dbentry != ((void*)0) && dbentry->functions != ((void*)0))
 {
  funcentry = (PgStat_StatFuncEntry *) hash_search(dbentry->functions,
               (void *) &func_id,
               HASH_FIND, ((void*)0));
 }

 return funcentry;
}
