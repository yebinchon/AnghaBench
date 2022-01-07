
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int schema_sent; } ;
typedef TYPE_1__ RelationSyncEntry ;
typedef int Oid ;
typedef int Datum ;


 int HASH_FIND ;
 int * RelationSyncCache ;
 scalar_t__ hash_search (int *,int *,int ,int *) ;

__attribute__((used)) static void
rel_sync_cache_relation_cb(Datum arg, Oid relid)
{
 RelationSyncEntry *entry;






 if (RelationSyncCache == ((void*)0))
  return;
 entry = (RelationSyncEntry *) hash_search(RelationSyncCache, &relid,
             HASH_FIND, ((void*)0));




 if (entry != ((void*)0))
  entry->schema_sent = 0;
}
