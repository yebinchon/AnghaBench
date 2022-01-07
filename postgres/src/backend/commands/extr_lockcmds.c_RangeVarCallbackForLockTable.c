
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ LockTableAclCheck (int ,int ,int ) ;
 int MyXactFlags ;
 int OidIsValid (int ) ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 char RELKIND_VIEW ;
 char RELPERSISTENCE_TEMP ;
 int XACT_FLAGS_ACCESSEDTEMPNAMESPACE ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 char get_rel_persistence (int ) ;
 char get_rel_relkind (int ) ;
 int get_relkind_objtype (char) ;

__attribute__((used)) static void
RangeVarCallbackForLockTable(const RangeVar *rv, Oid relid, Oid oldrelid,
        void *arg)
{
 LOCKMODE lockmode = *(LOCKMODE *) arg;
 char relkind;
 char relpersistence;
 AclResult aclresult;

 if (!OidIsValid(relid))
  return;
 relkind = get_rel_relkind(relid);
 if (!relkind)
  return;



 if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE &&
  relkind != RELKIND_VIEW)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table or view",
      rv->relname)));





 relpersistence = get_rel_persistence(relid);
 if (relpersistence == RELPERSISTENCE_TEMP)
  MyXactFlags |= XACT_FLAGS_ACCESSEDTEMPNAMESPACE;


 aclresult = LockTableAclCheck(relid, lockmode, GetUserId());
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, get_relkind_objtype(get_rel_relkind(relid)), rv->relname);
}
