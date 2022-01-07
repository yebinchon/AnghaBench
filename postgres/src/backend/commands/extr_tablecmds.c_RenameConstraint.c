
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ inh; int relname; } ;
struct TYPE_4__ {scalar_t__ renameType; TYPE_3__* relation; int newname; int subname; scalar_t__ missing_ok; int object; } ;
typedef TYPE_1__ RenameStmt ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int HeapTuple ;


 int AccessExclusiveLock ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int InvalidObjectAddress ;
 int InvalidOid ;
 int List ;
 int NOTICE ;
 int NoLock ;
 scalar_t__ OBJECT_DOMCONSTRAINT ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RVR_MISSING_OK ;
 int RangeVarCallbackForRenameAttribute ;
 int RangeVarGetRelidExtended (TYPE_3__*,int ,int ,int ,int *) ;
 int ReleaseSysCache (int ) ;
 int RowExclusiveLock ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int TypeRelationId ;
 int castNode (int ,int ) ;
 int checkDomainOwner (int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int makeTypeNameFromNameList (int ) ;
 int rename_constraint_internal (int ,int ,int ,int ,int,int,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int typenameTypeId (int *,int ) ;

ObjectAddress
RenameConstraint(RenameStmt *stmt)
{
 Oid relid = InvalidOid;
 Oid typid = InvalidOid;

 if (stmt->renameType == OBJECT_DOMCONSTRAINT)
 {
  Relation rel;
  HeapTuple tup;

  typid = typenameTypeId(((void*)0), makeTypeNameFromNameList(castNode(List, stmt->object)));
  rel = table_open(TypeRelationId, RowExclusiveLock);
  tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
  if (!HeapTupleIsValid(tup))
   elog(ERROR, "cache lookup failed for type %u", typid);
  checkDomainOwner(tup);
  ReleaseSysCache(tup);
  table_close(rel, NoLock);
 }
 else
 {

  relid = RangeVarGetRelidExtended(stmt->relation, AccessExclusiveLock,
           stmt->missing_ok ? RVR_MISSING_OK : 0,
           RangeVarCallbackForRenameAttribute,
           ((void*)0));
  if (!OidIsValid(relid))
  {
   ereport(NOTICE,
     (errmsg("relation \"%s\" does not exist, skipping",
       stmt->relation->relname)));
   return InvalidObjectAddress;
  }
 }

 return
  rename_constraint_internal(relid, typid,
           stmt->subname,
           stmt->newname,
           (stmt->relation &&
         stmt->relation->inh),
           0,
           0 );

}
