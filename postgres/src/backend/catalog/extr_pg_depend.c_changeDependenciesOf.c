
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int objid; } ;
struct TYPE_10__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_depend ;


 int Anum_pg_depend_classid ;
 int Anum_pg_depend_objid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DependDependerIndexId ;
 int DependRelationId ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_1__* heap_copytuple (TYPE_1__*) ;
 int heap_freetuple (TYPE_1__*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

long
changeDependenciesOf(Oid classId, Oid oldObjectId,
      Oid newObjectId)
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
    ObjectIdGetDatum(oldObjectId));

 scan = systable_beginscan(depRel, DependDependerIndexId, 1,
         ((void*)0), 2, key);

 while (HeapTupleIsValid((tup = systable_getnext(scan))))
 {
  Form_pg_depend depform = (Form_pg_depend) GETSTRUCT(tup);


  tup = heap_copytuple(tup);
  depform = (Form_pg_depend) GETSTRUCT(tup);

  depform->objid = newObjectId;

  CatalogTupleUpdate(depRel, &tup->t_self, tup);

  heap_freetuple(tup);

  count++;
 }

 systable_endscan(scan);

 table_close(depRel, RowExclusiveLock);

 return count;
}
