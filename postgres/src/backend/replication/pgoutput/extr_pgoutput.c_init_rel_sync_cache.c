
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; } ;
typedef int RelationSyncEntry ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ HASHCTL ;
typedef int Datum ;


 int Assert (int ) ;
 int CacheRegisterRelcacheCallback (int ,int ) ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int PUBLICATIONRELMAP ;
 int * RelationSyncCache ;
 int * hash_create (char*,int,TYPE_1__*,int) ;
 int rel_sync_cache_publication_cb ;
 int rel_sync_cache_relation_cb ;

__attribute__((used)) static void
init_rel_sync_cache(MemoryContext cachectx)
{
 HASHCTL ctl;
 MemoryContext old_ctxt;

 if (RelationSyncCache != ((void*)0))
  return;


 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(RelationSyncEntry);
 ctl.hcxt = cachectx;

 old_ctxt = MemoryContextSwitchTo(cachectx);
 RelationSyncCache = hash_create("logical replication output relation cache",
         128, &ctl,
         HASH_ELEM | HASH_CONTEXT | HASH_BLOBS);
 (void) MemoryContextSwitchTo(old_ctxt);

 Assert(RelationSyncCache != ((void*)0));

 CacheRegisterRelcacheCallback(rel_sync_cache_relation_cb, (Datum) 0);
 CacheRegisterSyscacheCallback(PUBLICATIONRELMAP,
          rel_sync_cache_publication_cb,
          (Datum) 0);
}
