
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int oid; scalar_t__ opts; } ;
typedef TYPE_1__ TableSpaceCacheEntry ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int ERROR ;
 int HASH_REMOVE ;
 int TableSpaceCacheHash ;
 int elog (int ,char*) ;
 int * hash_search (int ,void*,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static void
InvalidateTableSpaceCacheCallback(Datum arg, int cacheid, uint32 hashvalue)
{
 HASH_SEQ_STATUS status;
 TableSpaceCacheEntry *spc;

 hash_seq_init(&status, TableSpaceCacheHash);
 while ((spc = (TableSpaceCacheEntry *) hash_seq_search(&status)) != ((void*)0))
 {
  if (spc->opts)
   pfree(spc->opts);
  if (hash_search(TableSpaceCacheHash,
      (void *) &spc->oid,
      HASH_REMOVE,
      ((void*)0)) == ((void*)0))
   elog(ERROR, "hash table corrupted");
 }
}
