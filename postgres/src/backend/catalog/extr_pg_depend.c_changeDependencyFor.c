
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ refclassid; scalar_t__ refobjid; } ;
struct TYPE_15__ {int t_self; } ;
struct TYPE_14__ {scalar_t__ objectSubId; scalar_t__ objectId; scalar_t__ classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_depend ;


 int Anum_pg_depend_classid ;
 int Anum_pg_depend_objid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int DEPENDENCY_NORMAL ;
 int DependDependerIndexId ;
 int DependRelationId ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_2__* heap_copytuple (TYPE_2__*) ;
 int heap_freetuple (TYPE_2__*) ;
 int isObjectPinned (TYPE_1__*,int ) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

long
changeDependencyFor(Oid classId, Oid objectId,
     Oid refClassId, Oid oldRefObjectId,
     Oid newRefObjectId)
{
 long count = 0;
 Relation depRel;
 ScanKeyData key[2];
 SysScanDesc scan;
 HeapTuple tup;
 ObjectAddress objAddr;
 ObjectAddress depAddr;
 bool oldIsPinned;
 bool newIsPinned;

 depRel = table_open(DependRelationId, RowExclusiveLock);







 objAddr.classId = refClassId;
 objAddr.objectId = oldRefObjectId;
 objAddr.objectSubId = 0;

 oldIsPinned = isObjectPinned(&objAddr, depRel);

 objAddr.objectId = newRefObjectId;

 newIsPinned = isObjectPinned(&objAddr, depRel);

 if (oldIsPinned)
 {
  table_close(depRel, RowExclusiveLock);





  if (newIsPinned)
   return 1;





  depAddr.classId = classId;
  depAddr.objectId = objectId;
  depAddr.objectSubId = 0;
  recordDependencyOn(&depAddr, &objAddr, DEPENDENCY_NORMAL);

  return 1;
 }


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

 while (HeapTupleIsValid((tup = systable_getnext(scan))))
 {
  Form_pg_depend depform = (Form_pg_depend) GETSTRUCT(tup);

  if (depform->refclassid == refClassId &&
   depform->refobjid == oldRefObjectId)
  {
   if (newIsPinned)
    CatalogTupleDelete(depRel, &tup->t_self);
   else
   {

    tup = heap_copytuple(tup);
    depform = (Form_pg_depend) GETSTRUCT(tup);

    depform->refobjid = newRefObjectId;

    CatalogTupleUpdate(depRel, &tup->t_self, tup);

    heap_freetuple(tup);
   }

   count++;
  }
 }

 systable_endscan(scan);

 table_close(depRel, RowExclusiveLock);

 return count;
}
