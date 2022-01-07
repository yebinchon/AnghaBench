
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ refclassid; char deptype; } ;
struct TYPE_6__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_depend ;


 int Anum_pg_depend_classid ;
 int Anum_pg_depend_objid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int DependDependerIndexId ;
 int DependRelationId ;
 int F_OIDEQ ;
 int GETSTRUCT (TYPE_1__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

long
deleteDependencyRecordsForClass(Oid classId, Oid objectId,
        Oid refclassId, char deptype)
{
 long count = 0;
 Relation depRel;
 ScanKeyData key[2];
 SysScanDesc scan;
 HeapTuple tup;

 depRel = table_open(DependRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_depend_classid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_objid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(objectId));

 scan = systable_beginscan(depRel, DependDependerIndexId, 1,
         ((void*)0), 2, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_depend depform = (Form_pg_depend) GETSTRUCT(tup);

  if (depform->refclassid == refclassId && depform->deptype == deptype)
  {
   CatalogTupleDelete(depRel, &tup->t_self);
   count++;
  }
 }

 systable_endscan(scan);

 table_close(depRel, RowExclusiveLock);

 return count;
}
