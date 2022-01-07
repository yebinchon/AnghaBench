
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int nulls ;
typedef int int32 ;
struct TYPE_12__ {scalar_t__ deptype; void* refobjid; void* refclassid; } ;
struct TYPE_11__ {int t_self; } ;
typedef int SysScanDesc ;
typedef scalar_t__ SharedDependencyType ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_shdepend ;
typedef int Datum ;


 int Anum_pg_shdepend_classid ;
 int Anum_pg_shdepend_dbid ;
 int Anum_pg_shdepend_deptype ;
 int Anum_pg_shdepend_objid ;
 int Anum_pg_shdepend_objsubid ;
 int Anum_pg_shdepend_refclassid ;
 int Anum_pg_shdepend_refobjid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleInsert (int ,TYPE_1__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int CharGetDatum (scalar_t__) ;
 int ERROR ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int Int32GetDatum (int ) ;
 int Natts_pg_shdepend ;
 int ObjectIdGetDatum (void*) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int,int ,int ,int ) ;
 int SharedDependDependerIndexId ;
 void* classIdGetDbId (void*) ;
 int elog (int ,char*,void*,void*,int ,scalar_t__) ;
 TYPE_1__* heap_copytuple (TYPE_1__*) ;
 TYPE_1__* heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (TYPE_1__*) ;
 scalar_t__ isSharedObjectPinned (void*,void*,int ) ;
 int memset (int*,int,int) ;
 int shdepLockAndCheckObject (void*,void*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;

__attribute__((used)) static void
shdepChangeDep(Relation sdepRel,
      Oid classid, Oid objid, int32 objsubid,
      Oid refclassid, Oid refobjid,
      SharedDependencyType deptype)
{
 Oid dbid = classIdGetDbId(classid);
 HeapTuple oldtup = ((void*)0);
 HeapTuple scantup;
 ScanKeyData key[4];
 SysScanDesc scan;





 shdepLockAndCheckObject(refclassid, refobjid);




 ScanKeyInit(&key[0],
    Anum_pg_shdepend_dbid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(dbid));
 ScanKeyInit(&key[1],
    Anum_pg_shdepend_classid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classid));
 ScanKeyInit(&key[2],
    Anum_pg_shdepend_objid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(objid));
 ScanKeyInit(&key[3],
    Anum_pg_shdepend_objsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(objsubid));

 scan = systable_beginscan(sdepRel, SharedDependDependerIndexId, 1,
         ((void*)0), 4, key);

 while ((scantup = systable_getnext(scan)) != ((void*)0))
 {

  if (((Form_pg_shdepend) GETSTRUCT(scantup))->deptype != deptype)
   continue;

  if (oldtup)
   elog(ERROR,
     "multiple pg_shdepend entries for object %u/%u/%d deptype %c",
     classid, objid, objsubid, deptype);
  oldtup = heap_copytuple(scantup);
 }

 systable_endscan(scan);

 if (isSharedObjectPinned(refclassid, refobjid, sdepRel))
 {

  if (oldtup)
   CatalogTupleDelete(sdepRel, &oldtup->t_self);
 }
 else if (oldtup)
 {

  Form_pg_shdepend shForm = (Form_pg_shdepend) GETSTRUCT(oldtup);


  shForm->refclassid = refclassid;
  shForm->refobjid = refobjid;

  CatalogTupleUpdate(sdepRel, &oldtup->t_self, oldtup);
 }
 else
 {

  Datum values[Natts_pg_shdepend];
  bool nulls[Natts_pg_shdepend];

  memset(nulls, 0, sizeof(nulls));

  values[Anum_pg_shdepend_dbid - 1] = ObjectIdGetDatum(dbid);
  values[Anum_pg_shdepend_classid - 1] = ObjectIdGetDatum(classid);
  values[Anum_pg_shdepend_objid - 1] = ObjectIdGetDatum(objid);
  values[Anum_pg_shdepend_objsubid - 1] = Int32GetDatum(objsubid);

  values[Anum_pg_shdepend_refclassid - 1] = ObjectIdGetDatum(refclassid);
  values[Anum_pg_shdepend_refobjid - 1] = ObjectIdGetDatum(refobjid);
  values[Anum_pg_shdepend_deptype - 1] = CharGetDatum(deptype);





  oldtup = heap_form_tuple(RelationGetDescr(sdepRel), values, nulls);
  CatalogTupleInsert(sdepRel, oldtup);
 }

 if (oldtup)
  heap_freetuple(oldtup);
}
