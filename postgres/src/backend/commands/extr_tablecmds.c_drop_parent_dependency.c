
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ refclassid; scalar_t__ refobjid; scalar_t__ refobjsubid; scalar_t__ deptype; } ;
struct TYPE_6__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_depend ;
typedef scalar_t__ DependencyType ;


 int Anum_pg_depend_classid ;
 int Anum_pg_depend_objid ;
 int Anum_pg_depend_objsubid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int DependDependerIndexId ;
 int DependRelationId ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (TYPE_1__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int Int32GetDatum (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RelationRelationId ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
drop_parent_dependency(Oid relid, Oid refclassid, Oid refobjid,
        DependencyType deptype)
{
 Relation catalogRelation;
 SysScanDesc scan;
 ScanKeyData key[3];
 HeapTuple depTuple;

 catalogRelation = table_open(DependRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_depend_classid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationRelationId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_objid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 ScanKeyInit(&key[2],
    Anum_pg_depend_objsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(0));

 scan = systable_beginscan(catalogRelation, DependDependerIndexId, 1,
         ((void*)0), 3, key);

 while (HeapTupleIsValid(depTuple = systable_getnext(scan)))
 {
  Form_pg_depend dep = (Form_pg_depend) GETSTRUCT(depTuple);

  if (dep->refclassid == refclassid &&
   dep->refobjid == refobjid &&
   dep->refobjsubid == 0 &&
   dep->deptype == deptype)
   CatalogTupleDelete(catalogRelation, &depTuple->t_self);
 }

 systable_endscan(scan);
 table_close(catalogRelation, RowExclusiveLock);
}
