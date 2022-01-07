
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ conindid; scalar_t__ oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int *) ;
 scalar_t__ InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
get_relation_idx_constraint_oid(Oid relationId, Oid indexId)
{
 Relation pg_constraint;
 SysScanDesc scan;
 ScanKeyData key;
 HeapTuple tuple;
 Oid constraintId = InvalidOid;

 pg_constraint = table_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&key,
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber,
    F_OIDEQ,
    ObjectIdGetDatum(relationId));
 scan = systable_beginscan(pg_constraint, ConstraintRelidTypidNameIndexId,
         1, ((void*)0), 1, &key);
 while ((tuple = systable_getnext(scan)) != ((void*)0))
 {
  Form_pg_constraint constrForm;

  constrForm = (Form_pg_constraint) GETSTRUCT(tuple);
  if (constrForm->conindid == indexId)
  {
   constraintId = constrForm->oid;
   break;
  }
 }
 systable_endscan(scan);

 table_close(pg_constraint, AccessShareLock);
 return constraintId;
}
