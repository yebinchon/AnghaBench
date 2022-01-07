
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int key; } ;
typedef TYPE_1__ OprCacheEntry ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int Assert (int ) ;
 int ERROR ;
 int HASH_REMOVE ;
 int * OprCacheHash ;
 int elog (int ,char*) ;
 int * hash_search (int *,void*,int ,int *) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
InvalidateOprCacheCallBack(Datum arg, int cacheid, uint32 hashvalue)
{
 HASH_SEQ_STATUS status;
 OprCacheEntry *hentry;

 Assert(OprCacheHash != ((void*)0));


 hash_seq_init(&status, OprCacheHash);

 while ((hentry = (OprCacheEntry *) hash_seq_search(&status)) != ((void*)0))
 {
  if (hash_search(OprCacheHash,
      (void *) &hentry->key,
      HASH_REMOVE, ((void*)0)) == ((void*)0))
   elog(ERROR, "hash table corrupted");
 }
}
