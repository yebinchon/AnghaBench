
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef int AttrNumber ;


 int Assert (int ) ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 int HeapTupleIsValid (int *) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RelationGetRelid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * SearchSysCacheCopy1 (int,int ) ;
 int get_object_catcache_oid (int ) ;
 int get_object_oid_index (int ) ;
 int * heap_copytuple (int *) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;

HeapTuple
get_catalog_object_by_oid(Relation catalog, AttrNumber oidcol, Oid objectId)
{
 HeapTuple tuple;
 Oid classId = RelationGetRelid(catalog);
 int oidCacheId = get_object_catcache_oid(classId);

 if (oidCacheId > 0)
 {
  tuple = SearchSysCacheCopy1(oidCacheId, ObjectIdGetDatum(objectId));
  if (!HeapTupleIsValid(tuple))
   return ((void*)0);
 }
 else
 {
  Oid oidIndexId = get_object_oid_index(classId);
  SysScanDesc scan;
  ScanKeyData skey;

  Assert(OidIsValid(oidIndexId));

  ScanKeyInit(&skey,
     oidcol,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(objectId));

  scan = systable_beginscan(catalog, oidIndexId, 1,
          ((void*)0), 1, &skey);
  tuple = systable_getnext(scan);
  if (!HeapTupleIsValid(tuple))
  {
   systable_endscan(scan);
   return ((void*)0);
  }
  tuple = heap_copytuple(tuple);

  systable_endscan(scan);
 }

 return tuple;
}
