
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Form_pg_class ;


 int ACLCHECK_NOT_OWNER ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ IsSystemClass (int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int allowSystemTableMods ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_rel_relkind (int ) ;
 int get_relkind_objtype (int ) ;
 int pg_class_ownercheck (int ,int ) ;

void
RangeVarCallbackOwnsRelation(const RangeVar *relation,
        Oid relId, Oid oldRelId, void *arg)
{
 HeapTuple tuple;


 if (!OidIsValid(relId))
  return;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relId);

 if (!pg_class_ownercheck(relId, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(get_rel_relkind(relId)),
        relation->relname);

 if (!allowSystemTableMods &&
  IsSystemClass(relId, (Form_pg_class) GETSTRUCT(tuple)))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied: \"%s\" is a system catalog",
      relation->relname)));

 ReleaseSysCache(tuple);
}
