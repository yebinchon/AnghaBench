
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ relkind; } ;
struct TYPE_5__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


 int ACLCHECK_NOT_OWNER ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ IsSystemClass (int ,TYPE_2__*) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_VIEW ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int allowSystemTableMods ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_rel_relkind (int ) ;
 int get_relkind_objtype (int ) ;
 int pg_class_ownercheck (int ,int ) ;

__attribute__((used)) static void
RangeVarCallbackForRenameRule(const RangeVar *rv, Oid relid, Oid oldrelid,
         void *arg)
{
 HeapTuple tuple;
 Form_pg_class form;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
  return;
 form = (Form_pg_class) GETSTRUCT(tuple);


 if (form->relkind != RELKIND_RELATION &&
  form->relkind != RELKIND_VIEW &&
  form->relkind != RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table or view", rv->relname)));

 if (!allowSystemTableMods && IsSystemClass(relid, form))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied: \"%s\" is a system catalog",
      rv->relname)));


 if (!pg_class_ownercheck(relid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(get_rel_relkind(relid)), rv->relname);

 ReleaseSysCache(tuple);
}
