
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_14__ {int relname; } ;
struct TYPE_13__ {int newschema; TYPE_8__* relation; scalar_t__ missing_ok; } ;
struct TYPE_12__ {TYPE_1__* rd_rel; } ;
struct TYPE_11__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int RangeVar ;
typedef int Oid ;
typedef int ObjectAddresses ;
typedef int ObjectAddress ;
typedef TYPE_3__ AlterObjectSchemaStmt ;


 int AccessExclusiveLock ;
 int AlterTableNamespaceInternal (TYPE_2__*,int ,int ,int *) ;
 int CheckSetNamespace (int ,int ) ;
 int DEPENDENCY_AUTO ;
 int DEPENDENCY_INTERNAL ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int InvalidObjectAddress ;
 int NOTICE ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,int ) ;
 int OidIsValid (int ) ;
 scalar_t__ RELKIND_SEQUENCE ;
 int RVR_MISSING_OK ;
 int RangeVarCallbackForAlterRelation ;
 int RangeVarGetAndCheckCreationNamespace (int *,int ,int *) ;
 int RangeVarGetRelidExtended (TYPE_8__*,int ,int ,int ,void*) ;
 int RelationGetNamespace (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ) ;
 int errmsg (char*,...) ;
 int free_object_addresses (int *) ;
 int get_rel_name (int ) ;
 int * makeRangeVar (int ,int ,int) ;
 int * new_object_addresses () ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_open (int ,int ) ;
 scalar_t__ sequenceIsOwned (int ,int ,int *,int *) ;

ObjectAddress
AlterTableNamespace(AlterObjectSchemaStmt *stmt, Oid *oldschema)
{
 Relation rel;
 Oid relid;
 Oid oldNspOid;
 Oid nspOid;
 RangeVar *newrv;
 ObjectAddresses *objsMoved;
 ObjectAddress myself;

 relid = RangeVarGetRelidExtended(stmt->relation, AccessExclusiveLock,
          stmt->missing_ok ? RVR_MISSING_OK : 0,
          RangeVarCallbackForAlterRelation,
          (void *) stmt);

 if (!OidIsValid(relid))
 {
  ereport(NOTICE,
    (errmsg("relation \"%s\" does not exist, skipping",
      stmt->relation->relname)));
  return InvalidObjectAddress;
 }

 rel = relation_open(relid, NoLock);

 oldNspOid = RelationGetNamespace(rel);


 if (rel->rd_rel->relkind == RELKIND_SEQUENCE)
 {
  Oid tableId;
  int32 colId;

  if (sequenceIsOwned(relid, DEPENDENCY_AUTO, &tableId, &colId) ||
   sequenceIsOwned(relid, DEPENDENCY_INTERNAL, &tableId, &colId))
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot move an owned sequence into another schema"),
      errdetail("Sequence \"%s\" is linked to table \"%s\".",
          RelationGetRelationName(rel),
          get_rel_name(tableId))));
 }


 newrv = makeRangeVar(stmt->newschema, RelationGetRelationName(rel), -1);
 nspOid = RangeVarGetAndCheckCreationNamespace(newrv, NoLock, ((void*)0));


 CheckSetNamespace(oldNspOid, nspOid);

 objsMoved = new_object_addresses();
 AlterTableNamespaceInternal(rel, oldNspOid, nspOid, objsMoved);
 free_object_addresses(objsMoved);

 ObjectAddressSet(myself, RelationRelationId, relid);

 if (oldschema)
  *oldschema = oldNspOid;


 relation_close(rel, NoLock);

 return myself;
}
