
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int adnum; int adrelid; } ;
struct TYPE_10__ {int atthasdef; } ;
struct TYPE_9__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef TYPE_3__* Form_pg_attrdef ;
typedef int AttrNumber ;


 int ATTNUM ;
 int AccessExclusiveLock ;
 int Anum_pg_attrdef_oid ;
 int AttrDefaultOidIndexId ;
 int AttrDefaultRelationId ;
 int AttributeRelationId ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Int16GetDatum (int ) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_1__* SearchSysCacheCopy2 (int ,int ,int ) ;
 int elog (int ,char*,int ,...) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveAttrDefaultById(Oid attrdefId)
{
 Relation attrdef_rel;
 Relation attr_rel;
 Relation myrel;
 ScanKeyData scankeys[1];
 SysScanDesc scan;
 HeapTuple tuple;
 Oid myrelid;
 AttrNumber myattnum;


 attrdef_rel = table_open(AttrDefaultRelationId, RowExclusiveLock);


 ScanKeyInit(&scankeys[0],
    Anum_pg_attrdef_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(attrdefId));

 scan = systable_beginscan(attrdef_rel, AttrDefaultOidIndexId, 1,
         ((void*)0), 1, scankeys);

 tuple = systable_getnext(scan);
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for attrdef %u", attrdefId);

 myrelid = ((Form_pg_attrdef) GETSTRUCT(tuple))->adrelid;
 myattnum = ((Form_pg_attrdef) GETSTRUCT(tuple))->adnum;


 myrel = relation_open(myrelid, AccessExclusiveLock);


 CatalogTupleDelete(attrdef_rel, &tuple->t_self);

 systable_endscan(scan);
 table_close(attrdef_rel, RowExclusiveLock);


 attr_rel = table_open(AttributeRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy2(ATTNUM,
        ObjectIdGetDatum(myrelid),
        Int16GetDatum(myattnum));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for attribute %d of relation %u",
    myattnum, myrelid);

 ((Form_pg_attribute) GETSTRUCT(tuple))->atthasdef = 0;

 CatalogTupleUpdate(attr_rel, &tuple->t_self, tuple);





 table_close(attr_rel, RowExclusiveLock);


 relation_close(myrel, NoLock);
}
