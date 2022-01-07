
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
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_depend ;


 int AccessShareLock ;
 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int Anum_pg_depend_refobjsubid ;
 int BTEqualStrategyNumber ;
 int ConstraintRelationId ;
 scalar_t__ DEPENDENCY_INTERNAL ;
 int DependReferenceIndexId ;
 int DependRelationId ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 char RELKIND_INDEX ;
 char RELKIND_PARTITIONED_INDEX ;
 scalar_t__ RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 char get_rel_relkind (int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
get_constraint_index(Oid constraintId)
{
 Oid indexId = InvalidOid;
 Relation depRel;
 ScanKeyData key[3];
 SysScanDesc scan;
 HeapTuple tup;


 depRel = table_open(DependRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_depend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(ConstraintRelationId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(constraintId));
 ScanKeyInit(&key[2],
    Anum_pg_depend_refobjsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(0));

 scan = systable_beginscan(depRel, DependReferenceIndexId, 1,
         ((void*)0), 3, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_depend deprec = (Form_pg_depend) GETSTRUCT(tup);





  if (deprec->classid == RelationRelationId &&
   deprec->objsubid == 0 &&
   deprec->deptype == DEPENDENCY_INTERNAL)
  {
   char relkind = get_rel_relkind(deprec->objid);





   if (relkind != RELKIND_INDEX &&
    relkind != RELKIND_PARTITIONED_INDEX)
    continue;

   indexId = deprec->objid;
   break;
  }
 }

 systable_endscan(scan);
 table_close(depRel, AccessShareLock);

 return indexId;
}
