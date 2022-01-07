
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int objectId; int classId; } ;
struct TYPE_5__ {scalar_t__ attnum_namespace; int oid_catcache_id; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectPropertyType ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;


 int Assert (int) ;
 int DatumGetObjectId (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidAttrNumber ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int,int ) ;
 int SysCacheGetAttr (int,int ,scalar_t__,int*) ;
 int elog (int ,char*,int,int ) ;
 TYPE_1__* get_object_property_data (int ) ;

Oid
get_object_namespace(const ObjectAddress *address)
{
 int cache;
 HeapTuple tuple;
 bool isnull;
 Oid oid;
 const ObjectPropertyType *property;


 property = get_object_property_data(address->classId);
 if (property->attnum_namespace == InvalidAttrNumber)
  return InvalidOid;


 cache = property->oid_catcache_id;
 Assert(cache != -1);


 tuple = SearchSysCache1(cache, ObjectIdGetDatum(address->objectId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for cache %d oid %u",
    cache, address->objectId);
 oid = DatumGetObjectId(SysCacheGetAttr(cache,
             tuple,
             property->attnum_namespace,
             &isnull));
 Assert(!isnull);
 ReleaseSysCache(tuple);

 return oid;
}
