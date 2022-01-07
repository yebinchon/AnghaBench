
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_attribute_attrelid ;
 int AttributeRelationId ;
 int AttributeRelidNumIndexId ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_OIDEQ ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DeleteAttributeTuples(Oid relid)
{
 Relation attrel;
 SysScanDesc scan;
 ScanKeyData key[1];
 HeapTuple atttup;


 attrel = table_open(AttributeRelationId, RowExclusiveLock);


 ScanKeyInit(&key[0],
    Anum_pg_attribute_attrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));

 scan = systable_beginscan(attrel, AttributeRelidNumIndexId, 1,
         ((void*)0), 1, key);


 while ((atttup = systable_getnext(scan)) != ((void*)0))
  CatalogTupleDelete(attrel, &atttup->t_self);


 systable_endscan(scan);
 table_close(attrel, RowExclusiveLock);
}
