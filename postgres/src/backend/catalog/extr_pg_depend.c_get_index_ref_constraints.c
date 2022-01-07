
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ classid; scalar_t__ objsubid; scalar_t__ deptype; int objid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_depend ;


 int AccessShareLock ;
 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int Anum_pg_depend_refobjsubid ;
 int BTEqualStrategyNumber ;
 scalar_t__ ConstraintRelationId ;
 scalar_t__ DEPENDENCY_NORMAL ;
 int DependReferenceIndexId ;
 int DependRelationId ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int32GetDatum (int ) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * lappend_oid (int *,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

List *
get_index_ref_constraints(Oid indexId)
{
 List *result = NIL;
 Relation depRel;
 ScanKeyData key[3];
 SysScanDesc scan;
 HeapTuple tup;


 depRel = table_open(DependRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_depend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationRelationId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(indexId));
 ScanKeyInit(&key[2],
    Anum_pg_depend_refobjsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(0));

 scan = systable_beginscan(depRel, DependReferenceIndexId, 1,
         ((void*)0), 3, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_depend deprec = (Form_pg_depend) GETSTRUCT(tup);





  if (deprec->classid == ConstraintRelationId &&
   deprec->objsubid == 0 &&
   deprec->deptype == DEPENDENCY_NORMAL)
  {
   result = lappend_oid(result, deprec->objid);
  }
 }

 systable_endscan(scan);
 table_close(depRel, AccessShareLock);

 return result;
}
