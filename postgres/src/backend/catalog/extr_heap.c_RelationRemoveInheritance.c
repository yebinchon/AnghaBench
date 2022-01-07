
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


 int Anum_pg_inherits_inhrelid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int InheritsRelationId ;
 int InheritsRelidSeqnoIndexId ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
RelationRemoveInheritance(Oid relid)
{
 Relation catalogRelation;
 SysScanDesc scan;
 ScanKeyData key;
 HeapTuple tuple;

 catalogRelation = table_open(InheritsRelationId, RowExclusiveLock);

 ScanKeyInit(&key,
    Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));

 scan = systable_beginscan(catalogRelation, InheritsRelidSeqnoIndexId, 1,
         ((void*)0), 1, &key);

 while (HeapTupleIsValid(tuple = systable_getnext(scan)))
  CatalogTupleDelete(catalogRelation, &tuple->t_self);

 systable_endscan(scan);
 table_close(catalogRelation, RowExclusiveLock);
}
