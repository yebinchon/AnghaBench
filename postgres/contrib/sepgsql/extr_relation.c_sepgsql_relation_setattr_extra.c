
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int AttrNumber ;


 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int DatumGetObjectId (int ) ;
 int ERROR ;
 int F_OIDEQ ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SnapshotSelf ;
 int elog (int ,char*,int ,int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int sepgsql_relation_setattr (int ) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static void
sepgsql_relation_setattr_extra(Relation catalog,
          Oid catindex_id,
          Oid extra_oid,
          AttrNumber anum_relation_id,
          AttrNumber anum_extra_id)
{
 ScanKeyData skey;
 SysScanDesc sscan;
 HeapTuple tuple;
 Datum datum;
 bool isnull;

 ScanKeyInit(&skey, anum_extra_id,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(extra_oid));

 sscan = systable_beginscan(catalog, catindex_id, 1,
          SnapshotSelf, 1, &skey);
 tuple = systable_getnext(sscan);
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for object %u in catalog \"%s\"",
    extra_oid, RelationGetRelationName(catalog));

 datum = heap_getattr(tuple, anum_relation_id,
       RelationGetDescr(catalog), &isnull);
 Assert(!isnull);

 sepgsql_relation_setattr(DatumGetObjectId(datum));

 systable_endscan(sscan);
}
