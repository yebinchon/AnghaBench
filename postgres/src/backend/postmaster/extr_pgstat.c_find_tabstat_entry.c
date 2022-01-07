
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tsa_entry; } ;
typedef TYPE_1__ TabStatHashEntry ;
typedef int PgStat_TableStatus ;
typedef int Oid ;


 int HASH_FIND ;
 TYPE_1__* hash_search (int ,int *,int ,int *) ;
 int pgStatTabHash ;

PgStat_TableStatus *
find_tabstat_entry(Oid rel_id)
{
 TabStatHashEntry *hash_entry;


 if (!pgStatTabHash)
  return ((void*)0);

 hash_entry = hash_search(pgStatTabHash, &rel_id, HASH_FIND, ((void*)0));
 if (!hash_entry)
  return ((void*)0);


 return hash_entry->tsa_entry;
}
