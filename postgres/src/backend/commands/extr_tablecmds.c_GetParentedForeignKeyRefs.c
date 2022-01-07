
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; int conparentid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_confrelid ;
 int Anum_pg_constraint_contype ;
 int BTEqualStrategyNumber ;
 int CONSTRAINT_FOREIGN ;
 int CharGetDatum (int ) ;
 int ConstraintRelationId ;
 int F_CHAREQ ;
 int F_OIDEQ ;
 int GETSTRUCT (int *) ;
 int INDEX_ATTR_BITMAP_KEY ;
 int InvalidOid ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RelationGetIndexAttrBitmap (int ,int ) ;
 int * RelationGetIndexList (int ) ;
 int RelationGetRelid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ bms_is_empty (int ) ;
 int * lappend_oid (int *,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static List *
GetParentedForeignKeyRefs(Relation partition)
{
 Relation pg_constraint;
 HeapTuple tuple;
 SysScanDesc scan;
 ScanKeyData key[2];
 List *constraints = NIL;





 if (RelationGetIndexList(partition) == NIL ||
  bms_is_empty(RelationGetIndexAttrBitmap(partition,
            INDEX_ATTR_BITMAP_KEY)))
  return NIL;


 pg_constraint = table_open(ConstraintRelationId, AccessShareLock);
 ScanKeyInit(&key[0],
    Anum_pg_constraint_confrelid, BTEqualStrategyNumber,
    F_OIDEQ, ObjectIdGetDatum(RelationGetRelid(partition)));
 ScanKeyInit(&key[1],
    Anum_pg_constraint_contype, BTEqualStrategyNumber,
    F_CHAREQ, CharGetDatum(CONSTRAINT_FOREIGN));


 scan = systable_beginscan(pg_constraint, InvalidOid, 1, ((void*)0), 2, key);
 while ((tuple = systable_getnext(scan)) != ((void*)0))
 {
  Form_pg_constraint constrForm = (Form_pg_constraint) GETSTRUCT(tuple);




  if (!OidIsValid(constrForm->conparentid))
   continue;

  constraints = lappend_oid(constraints, constrForm->oid);
 }

 systable_endscan(scan);
 table_close(pg_constraint, AccessShareLock);

 return constraints;
}
