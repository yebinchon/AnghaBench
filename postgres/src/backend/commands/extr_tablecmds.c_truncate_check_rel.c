
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ relkind; int relname; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_class ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_TRUNCATE ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ IsSystemClass (int ,TYPE_1__*) ;
 char* NameStr (int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 int aclcheck_error (scalar_t__,int ,char*) ;
 int allowSystemTableMods ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_relkind_objtype (scalar_t__) ;
 scalar_t__ pg_class_aclcheck (int ,int ,int ) ;

__attribute__((used)) static void
truncate_check_rel(Oid relid, Form_pg_class reltuple)
{
 AclResult aclresult;
 char *relname = NameStr(reltuple->relname);






 if (reltuple->relkind != RELKIND_RELATION &&
  reltuple->relkind != RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table", relname)));


 aclresult = pg_class_aclcheck(relid, GetUserId(), ACL_TRUNCATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, get_relkind_objtype(reltuple->relkind),
        relname);

 if (!allowSystemTableMods && IsSystemClass(relid, reltuple))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied: \"%s\" is a system catalog",
      relname)));
}
