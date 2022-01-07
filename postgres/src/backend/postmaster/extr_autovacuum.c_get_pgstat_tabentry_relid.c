
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tables; } ;
typedef int PgStat_StatTabEntry ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef int Oid ;


 int HASH_FIND ;
 scalar_t__ PointerIsValid (TYPE_1__*) ;
 int * hash_search (int ,int *,int ,int *) ;

__attribute__((used)) static PgStat_StatTabEntry *
get_pgstat_tabentry_relid(Oid relid, bool isshared, PgStat_StatDBEntry *shared,
        PgStat_StatDBEntry *dbentry)
{
 PgStat_StatTabEntry *tabentry = ((void*)0);

 if (isshared)
 {
  if (PointerIsValid(shared))
   tabentry = hash_search(shared->tables, &relid,
           HASH_FIND, ((void*)0));
 }
 else if (PointerIsValid(dbentry))
  tabentry = hash_search(dbentry->tables, &relid,
          HASH_FIND, ((void*)0));

 return tabentry;
}
