
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int replicate_valid; } ;
typedef TYPE_1__ RelationSyncEntry ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int * RelationSyncCache ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
rel_sync_cache_publication_cb(Datum arg, int cacheid, uint32 hashvalue)
{
 HASH_SEQ_STATUS status;
 RelationSyncEntry *entry;






 if (RelationSyncCache == ((void*)0))
  return;





 hash_seq_init(&status, RelationSyncCache);
 while ((entry = (RelationSyncEntry *) hash_seq_search(&status)) != ((void*)0))
  entry->replicate_valid = 0;
}
