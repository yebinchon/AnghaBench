
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ refclassid; scalar_t__ deptype; int refobjid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_depend ;


 int AccessShareLock ;
 int Anum_pg_depend_classid ;
 int Anum_pg_depend_objid ;
 int BTEqualStrategyNumber ;
 scalar_t__ DEPENDENCY_EXTENSION ;
 int DependDependerIndexId ;
 int DependRelationId ;
 scalar_t__ ExtensionRelationId ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
getExtensionOfObject(Oid classId, Oid objectId)
{
 Oid result = InvalidOid;
 Relation depRel;
 ScanKeyData key[2];
 SysScanDesc scan;
 HeapTuple tup;

 depRel = table_open(DependRelationId, AccessShareLock);

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

  if (depform->refclassid == ExtensionRelationId &&
   depform->deptype == DEPENDENCY_EXTENSION)
  {
   result = depform->refobjid;
   break;
  }
 }

 systable_endscan(scan);

 table_close(depRel, AccessShareLock);

 return result;
}
