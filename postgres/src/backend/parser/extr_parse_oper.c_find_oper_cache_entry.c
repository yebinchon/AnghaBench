
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_6__ {int keysize; int entrysize; } ;
struct TYPE_5__ {int opr_oid; } ;
typedef int OprCacheKey ;
typedef TYPE_1__ OprCacheEntry ;
typedef int Oid ;
typedef TYPE_2__ HASHCTL ;
typedef int Datum ;


 int CASTSOURCETARGET ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_FIND ;
 int InvalidOid ;
 int InvalidateOprCacheCallBack ;
 int MemSet (TYPE_2__*,int ,int) ;
 int OPERNAMENSP ;
 int * OprCacheHash ;
 int * hash_create (char*,int,TYPE_2__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int *) ;

__attribute__((used)) static Oid
find_oper_cache_entry(OprCacheKey *key)
{
 OprCacheEntry *oprentry;

 if (OprCacheHash == ((void*)0))
 {

  HASHCTL ctl;

  MemSet(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(OprCacheKey);
  ctl.entrysize = sizeof(OprCacheEntry);
  OprCacheHash = hash_create("Operator lookup cache", 256,
           &ctl, HASH_ELEM | HASH_BLOBS);


  CacheRegisterSyscacheCallback(OPERNAMENSP,
           InvalidateOprCacheCallBack,
           (Datum) 0);
  CacheRegisterSyscacheCallback(CASTSOURCETARGET,
           InvalidateOprCacheCallBack,
           (Datum) 0);
 }


 oprentry = (OprCacheEntry *) hash_search(OprCacheHash,
            (void *) key,
            HASH_FIND, ((void*)0));
 if (oprentry == ((void*)0))
  return InvalidOid;

 return oprentry->opr_oid;
}
