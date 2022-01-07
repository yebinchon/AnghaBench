
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {void* refobjid; } ;
struct TYPE_14__ {int t_self; } ;
struct TYPE_13__ {void* objectId; scalar_t__ objectSubId; void* classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_depend ;


 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int DependReferenceIndexId ;
 int DependRelationId ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int ObjectIdGetDatum (void*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int getObjectDescription (TYPE_1__*) ;
 TYPE_2__* heap_copytuple (TYPE_2__*) ;
 int heap_freetuple (TYPE_2__*) ;
 int isObjectPinned (TYPE_1__*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

long
changeDependenciesOn(Oid refClassId, Oid oldRefObjectId,
      Oid newRefObjectId)
{
 long count = 0;
 Relation depRel;
 ScanKeyData key[2];
 SysScanDesc scan;
 HeapTuple tup;
 ObjectAddress objAddr;
 bool newIsPinned;

 depRel = table_open(DependRelationId, RowExclusiveLock);







 objAddr.classId = refClassId;
 objAddr.objectId = oldRefObjectId;
 objAddr.objectSubId = 0;

 if (isObjectPinned(&objAddr, depRel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot remove dependency on %s because it is a system object",
      getObjectDescription(&objAddr))));





 objAddr.objectId = newRefObjectId;

 newIsPinned = isObjectPinned(&objAddr, depRel);


 ScanKeyInit(&key[0],
    Anum_pg_depend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(refClassId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(oldRefObjectId));

 scan = systable_beginscan(depRel, DependReferenceIndexId, 1,
         ((void*)0), 2, key);

 while (HeapTupleIsValid((tup = systable_getnext(scan))))
 {
  Form_pg_depend depform = (Form_pg_depend) GETSTRUCT(tup);

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

 systable_endscan(scan);

 table_close(depRel, RowExclusiveLock);

 return count;
}
