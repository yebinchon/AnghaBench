
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct DropRelationCallbackState {char relkind; scalar_t__ heapOid; scalar_t__ partParentOid; scalar_t__ concurrent; } ;
struct TYPE_8__ {int relispartition; char relkind; int relnamespace; } ;
struct TYPE_7__ {int indisvalid; } ;
struct TYPE_6__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef scalar_t__ Oid ;
typedef int LOCKMODE ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_index ;
typedef TYPE_3__* Form_pg_class ;


 int ACLCHECK_NOT_OWNER ;
 int AccessExclusiveLock ;
 int DropErrorMsgWrongType (int ,char,char) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 scalar_t__ IndexGetRelation (scalar_t__,int) ;
 void* InvalidOid ;
 scalar_t__ IsSystemClass (scalar_t__,TYPE_3__*) ;
 int LockRelationOid (scalar_t__,int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 char RELKIND_INDEX ;
 char RELKIND_PARTITIONED_INDEX ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ShareUpdateExclusiveLock ;
 int UnlockRelationOid (scalar_t__,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int allowSystemTableMods ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ get_partition_parent (scalar_t__) ;
 int get_rel_relkind (scalar_t__) ;
 int get_relkind_objtype (int ) ;
 int pg_class_ownercheck (scalar_t__,int ) ;
 int pg_namespace_ownercheck (int ,int ) ;

__attribute__((used)) static void
RangeVarCallbackForDropRelation(const RangeVar *rel, Oid relOid, Oid oldRelOid,
        void *arg)
{
 HeapTuple tuple;
 struct DropRelationCallbackState *state;
 char relkind;
 char expected_relkind;
 bool is_partition;
 Form_pg_class classform;
 LOCKMODE heap_lockmode;
 bool invalid_system_index = 0;

 state = (struct DropRelationCallbackState *) arg;
 relkind = state->relkind;
 heap_lockmode = state->concurrent ?
  ShareUpdateExclusiveLock : AccessExclusiveLock;






 if (relOid != oldRelOid && OidIsValid(state->heapOid))
 {
  UnlockRelationOid(state->heapOid, heap_lockmode);
  state->heapOid = InvalidOid;
 }






 if (relOid != oldRelOid && OidIsValid(state->partParentOid))
 {
  UnlockRelationOid(state->partParentOid, AccessExclusiveLock);
  state->partParentOid = InvalidOid;
 }


 if (!OidIsValid(relOid))
  return;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relOid));
 if (!HeapTupleIsValid(tuple))
  return;
 classform = (Form_pg_class) GETSTRUCT(tuple);
 is_partition = classform->relispartition;
 if (classform->relkind == RELKIND_PARTITIONED_TABLE)
  expected_relkind = RELKIND_RELATION;
 else if (classform->relkind == RELKIND_PARTITIONED_INDEX)
  expected_relkind = RELKIND_INDEX;
 else
  expected_relkind = classform->relkind;

 if (relkind != expected_relkind)
  DropErrorMsgWrongType(rel->relname, classform->relkind, relkind);


 if (!pg_class_ownercheck(relOid, GetUserId()) &&
  !pg_namespace_ownercheck(classform->relnamespace, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(get_rel_relkind(relOid)),
        rel->relname);







 if (IsSystemClass(relOid, classform) && relkind == RELKIND_INDEX)
 {
  HeapTuple locTuple;
  Form_pg_index indexform;
  bool indisvalid;

  locTuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(relOid));
  if (!HeapTupleIsValid(locTuple))
  {
   ReleaseSysCache(tuple);
   return;
  }

  indexform = (Form_pg_index) GETSTRUCT(locTuple);
  indisvalid = indexform->indisvalid;
  ReleaseSysCache(locTuple);


  if (!indisvalid)
   invalid_system_index = 1;
 }


 if (!invalid_system_index && !allowSystemTableMods && IsSystemClass(relOid, classform))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied: \"%s\" is a system catalog",
      rel->relname)));

 ReleaseSysCache(tuple);
 if ((relkind == RELKIND_INDEX || relkind == RELKIND_PARTITIONED_INDEX) &&
  relOid != oldRelOid)
 {
  state->heapOid = IndexGetRelation(relOid, 1);
  if (OidIsValid(state->heapOid))
   LockRelationOid(state->heapOid, heap_lockmode);
 }







 if (is_partition && relOid != oldRelOid)
 {
  state->partParentOid = get_partition_parent(relOid);
  if (OidIsValid(state->partParentOid))
   LockRelationOid(state->partParentOid, AccessExclusiveLock);
 }
}
