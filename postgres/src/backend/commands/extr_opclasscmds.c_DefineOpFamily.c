
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int amname; int opfamilyname; } ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__ CreateOpFamilyStmt ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int CreateOpFamily (int ,char*,int ,int ) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int GetUserId () ;
 int OBJECT_SCHEMA ;
 int QualifiedNameGetCreationNamespace (int ,char**) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_index_am_oid (int ,int) ;
 int get_namespace_name (int ) ;
 scalar_t__ pg_namespace_aclcheck (int ,int ,int ) ;
 int superuser () ;

ObjectAddress
DefineOpFamily(CreateOpFamilyStmt *stmt)
{
 char *opfname;
 Oid amoid,
    namespaceoid;
 AclResult aclresult;


 namespaceoid = QualifiedNameGetCreationNamespace(stmt->opfamilyname,
              &opfname);


 aclresult = pg_namespace_aclcheck(namespaceoid, GetUserId(), ACL_CREATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_SCHEMA,
        get_namespace_name(namespaceoid));


 amoid = get_index_am_oid(stmt->amname, 0);







 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be superuser to create an operator family")));


 return CreateOpFamily(stmt->amname, opfname, namespaceoid, amoid);
}
