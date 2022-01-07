
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_USAGE ;
 int GetUserId () ;
 int InvalidOid ;
 int InvokeNamespaceSearchHook (int ,int) ;
 int OBJECT_SCHEMA ;
 scalar_t__ OidIsValid (int ) ;
 int aclcheck_error (scalar_t__,int ,char const*) ;
 int get_namespace_oid (char const*,int) ;
 int myTempNamespace ;
 scalar_t__ pg_namespace_aclcheck (int ,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

Oid
LookupExplicitNamespace(const char *nspname, bool missing_ok)
{
 Oid namespaceId;
 AclResult aclresult;


 if (strcmp(nspname, "pg_temp") == 0)
 {
  if (OidIsValid(myTempNamespace))
   return myTempNamespace;






 }

 namespaceId = get_namespace_oid(nspname, missing_ok);
 if (missing_ok && !OidIsValid(namespaceId))
  return InvalidOid;

 aclresult = pg_namespace_aclcheck(namespaceId, GetUserId(), ACL_USAGE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_SCHEMA,
        nspname);

 InvokeNamespaceSearchHook(namespaceId, 1);

 return namespaceId;
}
