
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ deptype; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_shdepend ;


 int Anum_pg_shdepend_refclassid ;
 int Anum_pg_shdepend_refobjid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ SHARED_DEPENDENCY_PIN ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SharedDependReferenceIndexId ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static bool
isSharedObjectPinned(Oid classId, Oid objectId, Relation sdepRel)
{
 bool result = 0;
 ScanKeyData key[2];
 SysScanDesc scan;
 HeapTuple tup;

 ScanKeyInit(&key[0],
    Anum_pg_shdepend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classId));
 ScanKeyInit(&key[1],
    Anum_pg_shdepend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(objectId));

 scan = systable_beginscan(sdepRel, SharedDependReferenceIndexId, 1,
         ((void*)0), 2, key);







 tup = systable_getnext(scan);
 if (HeapTupleIsValid(tup))
 {
  Form_pg_shdepend shdepForm = (Form_pg_shdepend) GETSTRUCT(tup);

  if (shdepForm->deptype == SHARED_DEPENDENCY_PIN)
   result = 1;
 }

 systable_endscan(scan);

 return result;
}
