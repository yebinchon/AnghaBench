
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int ShippableCacheKey ;
typedef int ShippableCacheEntry ;
typedef TYPE_1__ HASHCTL ;
typedef int Datum ;


 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int FOREIGNSERVEROID ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int InvalidateShippableCacheCallback ;
 int MemSet (TYPE_1__*,int ,int) ;
 int ShippableCacheHash ;
 int hash_create (char*,int,TYPE_1__*,int) ;

__attribute__((used)) static void
InitializeShippableCache(void)
{
 HASHCTL ctl;


 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(ShippableCacheKey);
 ctl.entrysize = sizeof(ShippableCacheEntry);
 ShippableCacheHash =
  hash_create("Shippability cache", 256, &ctl, HASH_ELEM | HASH_BLOBS);


 CacheRegisterSyscacheCallback(FOREIGNSERVEROID,
          InvalidateShippableCacheCallback,
          (Datum) 0);
}
