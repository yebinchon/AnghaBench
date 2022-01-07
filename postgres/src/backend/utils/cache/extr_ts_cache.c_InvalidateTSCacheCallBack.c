
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int isvalid; } ;
typedef TYPE_1__ TSAnyCacheEntry ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int InvalidOid ;
 int * TSConfigCacheHash ;
 int TSCurrentConfigCache ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
InvalidateTSCacheCallBack(Datum arg, int cacheid, uint32 hashvalue)
{
 HTAB *hash = (HTAB *) DatumGetPointer(arg);
 HASH_SEQ_STATUS status;
 TSAnyCacheEntry *entry;

 hash_seq_init(&status, hash);
 while ((entry = (TSAnyCacheEntry *) hash_seq_search(&status)) != ((void*)0))
  entry->isvalid = 0;


 if (hash == TSConfigCacheHash)
  TSCurrentConfigCache = InvalidOid;
}
