
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int RelIdCacheEnt ;
typedef int Oid ;
typedef TYPE_1__ HASHCTL ;


 int CacheMemoryContext ;
 int CreateCacheMemoryContext () ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int INITRELCACHESIZE ;
 int MemSet (TYPE_1__*,int ,int) ;
 int RelationIdCache ;
 int RelationMapInitialize () ;
 int hash_create (char*,int ,TYPE_1__*,int) ;

void
RelationCacheInitialize(void)
{
 HASHCTL ctl;




 if (!CacheMemoryContext)
  CreateCacheMemoryContext();




 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(RelIdCacheEnt);
 RelationIdCache = hash_create("Relcache by OID", INITRELCACHESIZE,
          &ctl, HASH_ELEM | HASH_BLOBS);




 RelationMapInitialize();
}
