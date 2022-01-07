
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct AttachIndexCallbackState {int lockedParentTbl; scalar_t__ parentTblOid; scalar_t__ partitionOid; } ;
struct TYPE_5__ {scalar_t__ relkind; } ;
struct TYPE_4__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


 int AccessShareLock ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ IndexGetRelation (scalar_t__,int) ;
 scalar_t__ InvalidOid ;
 int LockRelationOid (scalar_t__,int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int UnlockRelationOid (scalar_t__,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
RangeVarCallbackForAttachIndex(const RangeVar *rv, Oid relOid, Oid oldRelOid,
          void *arg)
{
 struct AttachIndexCallbackState *state;
 Form_pg_class classform;
 HeapTuple tuple;

 state = (struct AttachIndexCallbackState *) arg;

 if (!state->lockedParentTbl)
 {
  LockRelationOid(state->parentTblOid, AccessShareLock);
  state->lockedParentTbl = 1;
 }







 if (relOid != oldRelOid && OidIsValid(state->partitionOid))
 {
  UnlockRelationOid(state->partitionOid, AccessShareLock);
  state->partitionOid = InvalidOid;
 }


 if (!OidIsValid(relOid))
  return;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relOid));
 if (!HeapTupleIsValid(tuple))
  return;
 classform = (Form_pg_class) GETSTRUCT(tuple);
 if (classform->relkind != RELKIND_PARTITIONED_INDEX &&
  classform->relkind != RELKIND_INDEX)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("\"%s\" is not an index", rv->relname)));
 ReleaseSysCache(tuple);





 state->partitionOid = IndexGetRelation(relOid, 0);
 LockRelationOid(state->partitionOid, AccessShareLock);
}
