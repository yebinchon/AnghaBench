
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ shippable_extensions; TYPE_1__* server; } ;
struct TYPE_9__ {int shippable; } ;
struct TYPE_8__ {int serverid; void* classid; void* objid; } ;
struct TYPE_7__ {int serverid; } ;
typedef TYPE_2__ ShippableCacheKey ;
typedef TYPE_3__ ShippableCacheEntry ;
typedef TYPE_4__ PgFdwRelationInfo ;
typedef void* Oid ;


 int HASH_ENTER ;
 int HASH_FIND ;
 int InitializeShippableCache () ;
 scalar_t__ NIL ;
 int ShippableCacheHash ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 scalar_t__ is_builtin (void*) ;
 int lookup_shippable (void*,void*,TYPE_4__*) ;

bool
is_shippable(Oid objectId, Oid classId, PgFdwRelationInfo *fpinfo)
{
 ShippableCacheKey key;
 ShippableCacheEntry *entry;


 if (is_builtin(objectId))
  return 1;


 if (fpinfo->shippable_extensions == NIL)
  return 0;


 if (!ShippableCacheHash)
  InitializeShippableCache();


 key.objid = objectId;
 key.classid = classId;
 key.serverid = fpinfo->server->serverid;


 entry = (ShippableCacheEntry *)
  hash_search(ShippableCacheHash,
     (void *) &key,
     HASH_FIND,
     ((void*)0));

 if (!entry)
 {

  bool shippable = lookup_shippable(objectId, classId, fpinfo);






  entry = (ShippableCacheEntry *)
   hash_search(ShippableCacheHash,
      (void *) &key,
      HASH_ENTER,
      ((void*)0));

  entry->shippable = shippable;
 }

 return entry->shippable;
}
