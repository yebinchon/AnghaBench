
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef TYPE_1__ HASHCTL ;
typedef int Datum ;
typedef int AttoptCacheKey ;
typedef int AttoptCacheEntry ;


 int ATTNUM ;
 int AttoptCacheHash ;
 int CacheMemoryContext ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int CreateCacheMemoryContext () ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int InvalidateAttoptCacheCallback ;
 int MemSet (TYPE_1__*,int ,int) ;
 int hash_create (char*,int,TYPE_1__*,int) ;

__attribute__((used)) static void
InitializeAttoptCache(void)
{
 HASHCTL ctl;


 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(AttoptCacheKey);
 ctl.entrysize = sizeof(AttoptCacheEntry);
 AttoptCacheHash =
  hash_create("Attopt cache", 256, &ctl,
     HASH_ELEM | HASH_BLOBS);


 if (!CacheMemoryContext)
  CreateCacheMemoryContext();


 CacheRegisterSyscacheCallback(ATTNUM,
          InvalidateAttoptCacheCallback,
          (Datum) 0);
}
