
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int InvalidOid ;
 int InvokeNamespaceSearchHook (int ,int) ;
 scalar_t__ OidIsValid (int ) ;
 int get_namespace_oid (char const*,int) ;
 int myTempNamespace ;
 scalar_t__ strcmp (char const*,char*) ;

Oid
LookupNamespaceNoError(const char *nspname)
{

 if (strcmp(nspname, "pg_temp") == 0)
 {
  if (OidIsValid(myTempNamespace))
  {
   InvokeNamespaceSearchHook(myTempNamespace, 1);
   return myTempNamespace;
  }






  return InvalidOid;
 }

 return get_namespace_oid(nspname, 1);
}
