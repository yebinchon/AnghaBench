
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int key; scalar_t__ opts; } ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;
typedef TYPE_1__ AttoptCacheEntry ;


 int AttoptCacheHash ;
 int ERROR ;
 int HASH_REMOVE ;
 int elog (int ,char*) ;
 int * hash_search (int ,void*,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static void
InvalidateAttoptCacheCallback(Datum arg, int cacheid, uint32 hashvalue)
{
 HASH_SEQ_STATUS status;
 AttoptCacheEntry *attopt;

 hash_seq_init(&status, AttoptCacheHash);
 while ((attopt = (AttoptCacheEntry *) hash_seq_search(&status)) != ((void*)0))
 {
  if (attopt->opts)
   pfree(attopt->opts);
  if (hash_search(AttoptCacheHash,
      (void *) &attopt->key,
      HASH_REMOVE,
      ((void*)0)) == ((void*)0))
   elog(ERROR, "hash table corrupted");
 }
}
