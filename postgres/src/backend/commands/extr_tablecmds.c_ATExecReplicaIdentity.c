
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_25__ {int attname; int attnotnull; } ;
struct TYPE_24__ {int rd_att; TYPE_4__* rd_index; TYPE_2__* rd_indam; TYPE_1__* rd_rel; } ;
struct TYPE_23__ {scalar_t__ identity_type; scalar_t__ name; } ;
struct TYPE_21__ {scalar_t__* values; } ;
struct TYPE_22__ {scalar_t__ indrelid; TYPE_3__ indkey; int indisvalid; int indimmediate; int indisunique; } ;
struct TYPE_20__ {int amcanunique; } ;
struct TYPE_19__ {int relnamespace; } ;
typedef TYPE_5__ ReplicaIdentityStmt ;
typedef TYPE_6__* Relation ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef TYPE_7__* Form_pg_attribute ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_COLUMN_REFERENCE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_6__*) ;
 int InvalidOid ;
 scalar_t__ NIL ;
 scalar_t__ NameStr (int ) ;
 int NoLock ;
 int OidIsValid (int ) ;
 scalar_t__ REPLICA_IDENTITY_DEFAULT ;
 scalar_t__ REPLICA_IDENTITY_FULL ;
 scalar_t__ REPLICA_IDENTITY_INDEX ;
 scalar_t__ REPLICA_IDENTITY_NOTHING ;
 scalar_t__ RelationGetIndexExpressions (TYPE_6__*) ;
 scalar_t__ RelationGetIndexPredicate (TYPE_6__*) ;
 scalar_t__ RelationGetRelationName (TYPE_6__*) ;
 scalar_t__ RelationGetRelid (TYPE_6__*) ;
 int ShareLock ;
 TYPE_7__* TupleDescAttr (int ,scalar_t__) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,...) ;
 int get_relname_relid (scalar_t__,int ) ;
 int index_close (TYPE_6__*,int ) ;
 TYPE_6__* index_open (int ,int ) ;
 int relation_mark_replica_identity (TYPE_6__*,scalar_t__,int ,int) ;

__attribute__((used)) static void
ATExecReplicaIdentity(Relation rel, ReplicaIdentityStmt *stmt, LOCKMODE lockmode)
{
 Oid indexOid;
 Relation indexRel;
 int key;

 if (stmt->identity_type == REPLICA_IDENTITY_DEFAULT)
 {
  relation_mark_replica_identity(rel, stmt->identity_type, InvalidOid, 1);
  return;
 }
 else if (stmt->identity_type == REPLICA_IDENTITY_FULL)
 {
  relation_mark_replica_identity(rel, stmt->identity_type, InvalidOid, 1);
  return;
 }
 else if (stmt->identity_type == REPLICA_IDENTITY_NOTHING)
 {
  relation_mark_replica_identity(rel, stmt->identity_type, InvalidOid, 1);
  return;
 }
 else if (stmt->identity_type == REPLICA_IDENTITY_INDEX)
 {
                     ;
 }
 else
  elog(ERROR, "unexpected identity type %u", stmt->identity_type);



 indexOid = get_relname_relid(stmt->name, rel->rd_rel->relnamespace);
 if (!OidIsValid(indexOid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("index \"%s\" for table \"%s\" does not exist",
      stmt->name, RelationGetRelationName(rel))));

 indexRel = index_open(indexOid, ShareLock);


 if (indexRel->rd_index == ((void*)0) ||
  indexRel->rd_index->indrelid != RelationGetRelid(rel))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not an index for table \"%s\"",
      RelationGetRelationName(indexRel),
      RelationGetRelationName(rel))));

 if (!indexRel->rd_indam->amcanunique ||
  !indexRel->rd_index->indisunique)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot use non-unique index \"%s\" as replica identity",
      RelationGetRelationName(indexRel))));

 if (!indexRel->rd_index->indimmediate)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot use non-immediate index \"%s\" as replica identity",
      RelationGetRelationName(indexRel))));

 if (RelationGetIndexExpressions(indexRel) != NIL)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot use expression index \"%s\" as replica identity",
      RelationGetRelationName(indexRel))));

 if (RelationGetIndexPredicate(indexRel) != NIL)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot use partial index \"%s\" as replica identity",
      RelationGetRelationName(indexRel))));

 if (!indexRel->rd_index->indisvalid)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot use invalid index \"%s\" as replica identity",
      RelationGetRelationName(indexRel))));


 for (key = 0; key < IndexRelationGetNumberOfKeyAttributes(indexRel); key++)
 {
  int16 attno = indexRel->rd_index->indkey.values[key];
  Form_pg_attribute attr;






  if (attno <= 0)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_COLUMN_REFERENCE),
      errmsg("index \"%s\" cannot be used as replica identity because column %d is a system column",
       RelationGetRelationName(indexRel), attno)));

  attr = TupleDescAttr(rel->rd_att, attno - 1);
  if (!attr->attnotnull)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("index \"%s\" cannot be used as replica identity because column \"%s\" is nullable",
       RelationGetRelationName(indexRel),
       NameStr(attr->attname))));
 }


 relation_mark_replica_identity(rel, stmt->identity_type, indexOid, 1);

 index_close(indexRel, NoLock);
}
