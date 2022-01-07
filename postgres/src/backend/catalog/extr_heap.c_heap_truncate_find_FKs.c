
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ contype; int conrelid; int confrelid; } ;
typedef int SysScanDesc ;
typedef int Relation ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int AccessShareLock ;
 scalar_t__ CONSTRAINT_FOREIGN ;
 int ConstraintRelationId ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int * NIL ;
 int * lappend_oid (int *,int ) ;
 int list_deduplicate_oid (int *) ;
 int list_member_oid (int *,int ) ;
 int list_oid_cmp ;
 int list_sort (int *,int ) ;
 int systable_beginscan (int ,int ,int,int *,int ,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

List *
heap_truncate_find_FKs(List *relationIds)
{
 List *result = NIL;
 Relation fkeyRel;
 SysScanDesc fkeyScan;
 HeapTuple tuple;





 fkeyRel = table_open(ConstraintRelationId, AccessShareLock);

 fkeyScan = systable_beginscan(fkeyRel, InvalidOid, 0,
          ((void*)0), 0, ((void*)0));

 while (HeapTupleIsValid(tuple = systable_getnext(fkeyScan)))
 {
  Form_pg_constraint con = (Form_pg_constraint) GETSTRUCT(tuple);


  if (con->contype != CONSTRAINT_FOREIGN)
   continue;


  if (!list_member_oid(relationIds, con->confrelid))
   continue;


  if (!list_member_oid(relationIds, con->conrelid))
   result = lappend_oid(result, con->conrelid);
 }

 systable_endscan(fkeyScan);
 table_close(fkeyRel, AccessShareLock);


 list_sort(result, list_oid_cmp);
 list_deduplicate_oid(result);

 return result;
}
