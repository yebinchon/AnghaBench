
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ relid; int key; } ;
typedef TYPE_1__ RelfilenodeMapEntry ;
typedef scalar_t__ Oid ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int Assert (int ) ;
 int ERROR ;
 int HASH_REMOVE ;
 scalar_t__ InvalidOid ;
 int * RelfilenodeMapHash ;
 int elog (int ,char*) ;
 int * hash_search (int *,void*,int ,int *) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
RelfilenodeMapInvalidateCallback(Datum arg, Oid relid)
{
 HASH_SEQ_STATUS status;
 RelfilenodeMapEntry *entry;


 Assert(RelfilenodeMapHash != ((void*)0));

 hash_seq_init(&status, RelfilenodeMapHash);
 while ((entry = (RelfilenodeMapEntry *) hash_seq_search(&status)) != ((void*)0))
 {





  if (relid == InvalidOid ||
   entry->relid == InvalidOid ||
   entry->relid == relid)
  {
   if (hash_search(RelfilenodeMapHash,
       (void *) &entry->key,
       HASH_REMOVE,
       ((void*)0)) == ((void*)0))
    elog(ERROR, "hash table corrupted");
  }
 }
}
