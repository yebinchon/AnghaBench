
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ coninhcount; scalar_t__ conparentid; int conislocal; } ;
struct TYPE_10__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_constraint ;


 int Assert (int) ;
 int CONSTROID ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ConstraintRelationId ;
 int DEPENDENCY_PARTITION_PRI ;
 int DEPENDENCY_PARTITION_SEC ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 scalar_t__ InvalidOid ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int RelationRelationId ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int deleteDependencyRecordsForClass (int ,scalar_t__,int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 TYPE_1__* heap_copytuple (TYPE_1__*) ;
 int recordDependencyOn (int *,int *,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
ConstraintSetParentConstraint(Oid childConstrId,
         Oid parentConstrId,
         Oid childTableId)
{
 Relation constrRel;
 Form_pg_constraint constrForm;
 HeapTuple tuple,
    newtup;
 ObjectAddress depender;
 ObjectAddress referenced;

 constrRel = table_open(ConstraintRelationId, RowExclusiveLock);
 tuple = SearchSysCache1(CONSTROID, ObjectIdGetDatum(childConstrId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for constraint %u", childConstrId);
 newtup = heap_copytuple(tuple);
 constrForm = (Form_pg_constraint) GETSTRUCT(newtup);
 if (OidIsValid(parentConstrId))
 {

  Assert(constrForm->coninhcount == 0);
  if (constrForm->conparentid != InvalidOid)
   elog(ERROR, "constraint %u already has a parent constraint",
     childConstrId);

  constrForm->conislocal = 0;
  constrForm->coninhcount++;
  constrForm->conparentid = parentConstrId;

  CatalogTupleUpdate(constrRel, &tuple->t_self, newtup);

  ObjectAddressSet(depender, ConstraintRelationId, childConstrId);

  ObjectAddressSet(referenced, ConstraintRelationId, parentConstrId);
  recordDependencyOn(&depender, &referenced, DEPENDENCY_PARTITION_PRI);

  ObjectAddressSet(referenced, RelationRelationId, childTableId);
  recordDependencyOn(&depender, &referenced, DEPENDENCY_PARTITION_SEC);
 }
 else
 {
  constrForm->coninhcount--;
  constrForm->conislocal = 1;
  constrForm->conparentid = InvalidOid;


  Assert(constrForm->coninhcount == 0);

  CatalogTupleUpdate(constrRel, &tuple->t_self, newtup);

  deleteDependencyRecordsForClass(ConstraintRelationId, childConstrId,
          ConstraintRelationId,
          DEPENDENCY_PARTITION_PRI);
  deleteDependencyRecordsForClass(ConstraintRelationId, childConstrId,
          RelationRelationId,
          DEPENDENCY_PARTITION_SEC);
 }

 ReleaseSysCache(tuple);
 table_close(constrRel, RowExclusiveLock);
}
