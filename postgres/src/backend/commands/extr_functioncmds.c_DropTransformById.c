
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_transform_oid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 int F_OIDEQ ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TransformOidIndexId ;
 int TransformRelationId ;
 int elog (int ,char*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DropTransformById(Oid transformOid)
{
 Relation relation;
 ScanKeyData scankey;
 SysScanDesc scan;
 HeapTuple tuple;

 relation = table_open(TransformRelationId, RowExclusiveLock);

 ScanKeyInit(&scankey,
    Anum_pg_transform_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(transformOid));
 scan = systable_beginscan(relation, TransformOidIndexId, 1,
         ((void*)0), 1, &scankey);

 tuple = systable_getnext(scan);
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for transform %u", transformOid);
 CatalogTupleDelete(relation, &tuple->t_self);

 systable_endscan(scan);
 table_close(relation, RowExclusiveLock);
}
