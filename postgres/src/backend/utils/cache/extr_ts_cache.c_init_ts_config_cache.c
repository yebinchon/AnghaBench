
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int TSConfigCacheEntry ;
typedef int Oid ;
typedef TYPE_1__ HASHCTL ;


 int CacheMemoryContext ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int CreateCacheMemoryContext () ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int InvalidateTSCacheCallBack ;
 int MemSet (TYPE_1__*,int ,int) ;
 int PointerGetDatum (int ) ;
 int TSCONFIGMAP ;
 int TSCONFIGOID ;
 int TSConfigCacheHash ;
 int hash_create (char*,int,TYPE_1__*,int) ;

__attribute__((used)) static void
init_ts_config_cache(void)
{
 HASHCTL ctl;

 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(TSConfigCacheEntry);
 TSConfigCacheHash = hash_create("Tsearch configuration cache", 16,
         &ctl, HASH_ELEM | HASH_BLOBS);

 CacheRegisterSyscacheCallback(TSCONFIGOID, InvalidateTSCacheCallBack,
          PointerGetDatum(TSConfigCacheHash));
 CacheRegisterSyscacheCallback(TSCONFIGMAP, InvalidateTSCacheCallBack,
          PointerGetDatum(TSConfigCacheHash));


 if (!CacheMemoryContext)
  CreateCacheMemoryContext();
}
