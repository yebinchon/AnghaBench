
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ attrelid; } ;
struct TYPE_7__ {scalar_t__ oid; scalar_t__ relisshared; } ;
struct TYPE_6__ {scalar_t__ contype; scalar_t__ conrelid; } ;
struct TYPE_5__ {scalar_t__ indexrelid; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_index ;
typedef TYPE_2__* Form_pg_constraint ;
typedef TYPE_3__* Form_pg_class ;
typedef TYPE_4__* Form_pg_attribute ;


 scalar_t__ AttributeRelationId ;
 scalar_t__ CONSTRAINT_FOREIGN ;
 scalar_t__ ConstraintRelationId ;
 int GETSTRUCT (int ) ;
 scalar_t__ IndexRelationId ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int IsCatalogRelation (int ) ;
 scalar_t__ IsSharedRelation (scalar_t__) ;
 scalar_t__ IsToastRelation (int ) ;
 scalar_t__ MyDatabaseId ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int PrepareInvalidationState () ;
 int PrepareToInvalidateCacheTuple (int ,int ,int ,int ) ;
 int RegisterCatcacheInvalidation ;
 int RegisterRelcacheInvalidation (scalar_t__,scalar_t__) ;
 int RegisterSnapshotInvalidation (scalar_t__,scalar_t__) ;
 scalar_t__ RelationGetRelid (int ) ;
 scalar_t__ RelationInvalidatesSnapshotsOnly (scalar_t__) ;
 scalar_t__ RelationRelationId ;

void
CacheInvalidateHeapTuple(Relation relation,
       HeapTuple tuple,
       HeapTuple newtuple)
{
 Oid tupleRelId;
 Oid databaseId;
 Oid relationId;


 if (IsBootstrapProcessingMode())
  return;






 if (!IsCatalogRelation(relation))
  return;





 if (IsToastRelation(relation))
  return;





 PrepareInvalidationState();




 tupleRelId = RelationGetRelid(relation);
 if (RelationInvalidatesSnapshotsOnly(tupleRelId))
 {
  databaseId = IsSharedRelation(tupleRelId) ? InvalidOid : MyDatabaseId;
  RegisterSnapshotInvalidation(databaseId, tupleRelId);
 }
 else
  PrepareToInvalidateCacheTuple(relation, tuple, newtuple,
           RegisterCatcacheInvalidation);
 if (tupleRelId == RelationRelationId)
 {
  Form_pg_class classtup = (Form_pg_class) GETSTRUCT(tuple);

  relationId = classtup->oid;
  if (classtup->relisshared)
   databaseId = InvalidOid;
  else
   databaseId = MyDatabaseId;
 }
 else if (tupleRelId == AttributeRelationId)
 {
  Form_pg_attribute atttup = (Form_pg_attribute) GETSTRUCT(tuple);

  relationId = atttup->attrelid;
  databaseId = MyDatabaseId;
 }
 else if (tupleRelId == IndexRelationId)
 {
  Form_pg_index indextup = (Form_pg_index) GETSTRUCT(tuple);







  relationId = indextup->indexrelid;
  databaseId = MyDatabaseId;
 }
 else if (tupleRelId == ConstraintRelationId)
 {
  Form_pg_constraint constrtup = (Form_pg_constraint) GETSTRUCT(tuple);





  if (constrtup->contype == CONSTRAINT_FOREIGN &&
   OidIsValid(constrtup->conrelid))
  {
   relationId = constrtup->conrelid;
   databaseId = MyDatabaseId;
  }
  else
   return;
 }
 else
  return;




 RegisterRelcacheInvalidation(databaseId, relationId);
}
