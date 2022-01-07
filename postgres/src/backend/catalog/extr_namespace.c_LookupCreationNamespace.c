
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int AccessTempTableNamespace (int) ;
 int GetUserId () ;
 int OBJECT_SCHEMA ;
 int aclcheck_error (scalar_t__,int ,char const*) ;
 int get_namespace_oid (char const*,int) ;
 int myTempNamespace ;
 scalar_t__ pg_namespace_aclcheck (int ,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

Oid
LookupCreationNamespace(const char *nspname)
{
 Oid namespaceId;
 AclResult aclresult;


 if (strcmp(nspname, "pg_temp") == 0)
 {

  AccessTempTableNamespace(0);
  return myTempNamespace;
 }

 namespaceId = get_namespace_oid(nspname, 0);

 aclresult = pg_namespace_aclcheck(namespaceId, GetUserId(), ACL_CREATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_SCHEMA,
        nspname);

 return namespaceId;
}
