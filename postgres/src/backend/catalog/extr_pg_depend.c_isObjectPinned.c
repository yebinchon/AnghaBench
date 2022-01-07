
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ deptype; } ;
struct TYPE_4__ {int objectId; int classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_depend ;


 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int BTEqualStrategyNumber ;
 scalar_t__ DEPENDENCY_PIN ;
 int DependReferenceIndexId ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static bool
isObjectPinned(const ObjectAddress *object, Relation rel)
{
 bool ret = 0;
 SysScanDesc scan;
 HeapTuple tup;
 ScanKeyData key[2];

 ScanKeyInit(&key[0],
    Anum_pg_depend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->classId));

 ScanKeyInit(&key[1],
    Anum_pg_depend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->objectId));

 scan = systable_beginscan(rel, DependReferenceIndexId, 1,
         ((void*)0), 2, key);







 tup = systable_getnext(scan);
 if (HeapTupleIsValid(tup))
 {
  Form_pg_depend foundDep = (Form_pg_depend) GETSTRUCT(tup);

  if (foundDep->deptype == DEPENDENCY_PIN)
   ret = 1;
 }

 systable_endscan(scan);

 return ret;
}
