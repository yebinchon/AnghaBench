
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
typedef int TableSpaceCacheEntry ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int Oid ;
typedef TYPE_1__ HASHCTL ;
typedef int Datum ;


 int CacheMemoryContext ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int CreateCacheMemoryContext () ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int InvalidateTableSpaceCacheCallback ;
 int MemSet (TYPE_1__*,int ,int) ;
 int TABLESPACEOID ;
 int TableSpaceCacheHash ;
 int hash_create (char*,int,TYPE_1__*,int) ;

__attribute__((used)) static void
InitializeTableSpaceCache(void)
{
 HASHCTL ctl;


 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(TableSpaceCacheEntry);
 TableSpaceCacheHash =
  hash_create("TableSpace cache", 16, &ctl,
     HASH_ELEM | HASH_BLOBS);


 if (!CacheMemoryContext)
  CreateCacheMemoryContext();


 CacheRegisterSyscacheCallback(TABLESPACEOID,
          InvalidateTableSpaceCacheCallback,
          (Datum) 0);
}
