
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ connamespace; int oid; } ;
struct TYPE_13__ {int t_self; } ;
struct TYPE_12__ {int objectId; scalar_t__ objectSubId; int classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddresses ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_constraint ;


 int Anum_pg_constraint_conrelid ;
 int Anum_pg_constraint_contypid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int add_exact_object_address (TYPE_1__*,int *) ;
 TYPE_2__* heap_copytuple (TYPE_2__*) ;
 scalar_t__ object_address_present (TYPE_1__*,int *) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterConstraintNamespaces(Oid ownerId, Oid oldNspId,
        Oid newNspId, bool isType, ObjectAddresses *objsMoved)
{
 Relation conRel;
 ScanKeyData key[2];
 SysScanDesc scan;
 HeapTuple tup;

 conRel = table_open(ConstraintRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(isType ? InvalidOid : ownerId));
 ScanKeyInit(&key[1],
    Anum_pg_constraint_contypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(isType ? ownerId : InvalidOid));

 scan = systable_beginscan(conRel, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 2, key);

 while (HeapTupleIsValid((tup = systable_getnext(scan))))
 {
  Form_pg_constraint conform = (Form_pg_constraint) GETSTRUCT(tup);
  ObjectAddress thisobj;

  thisobj.classId = ConstraintRelationId;
  thisobj.objectId = conform->oid;
  thisobj.objectSubId = 0;

  if (object_address_present(&thisobj, objsMoved))
   continue;


  if (conform->connamespace == oldNspId && oldNspId != newNspId)
  {
   tup = heap_copytuple(tup);
   conform = (Form_pg_constraint) GETSTRUCT(tup);

   conform->connamespace = newNspId;

   CatalogTupleUpdate(conRel, &tup->t_self, tup);






  }

  InvokeObjectPostAlterHook(ConstraintRelationId, thisobj.objectId, 0);

  add_exact_object_address(&thisobj, objsMoved);
 }

 systable_endscan(scan);

 table_close(conRel, RowExclusiveLock);
}
