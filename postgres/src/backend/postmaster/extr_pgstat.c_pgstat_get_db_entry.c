
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgStat_StatDBEntry ;
typedef int Oid ;
typedef int HASHACTION ;


 int HASH_ENTER ;
 int HASH_FIND ;
 scalar_t__ hash_search (int ,int *,int ,int*) ;
 int pgStatDBHash ;
 int reset_dbentry_counters (int *) ;

__attribute__((used)) static PgStat_StatDBEntry *
pgstat_get_db_entry(Oid databaseid, bool create)
{
 PgStat_StatDBEntry *result;
 bool found;
 HASHACTION action = (create ? HASH_ENTER : HASH_FIND);


 result = (PgStat_StatDBEntry *) hash_search(pgStatDBHash,
            &databaseid,
            action, &found);

 if (!create && !found)
  return ((void*)0);





 if (!found)
  reset_dbentry_counters(result);

 return result;
}
