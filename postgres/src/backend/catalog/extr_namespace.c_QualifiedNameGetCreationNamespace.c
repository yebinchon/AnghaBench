
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int AccessTempTableNamespace (int) ;
 int DeconstructQualifiedName (int *,char**,char**) ;
 int ERRCODE_UNDEFINED_SCHEMA ;
 int ERROR ;
 int OidIsValid (int ) ;
 int activeCreationNamespace ;
 scalar_t__ activeTempCreationPending ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_namespace_oid (char*,int) ;
 int myTempNamespace ;
 int recomputeNamespacePath () ;
 scalar_t__ strcmp (char*,char*) ;

Oid
QualifiedNameGetCreationNamespace(List *names, char **objname_p)
{
 char *schemaname;
 Oid namespaceId;


 DeconstructQualifiedName(names, &schemaname, objname_p);

 if (schemaname)
 {

  if (strcmp(schemaname, "pg_temp") == 0)
  {

   AccessTempTableNamespace(0);
   return myTempNamespace;
  }

  namespaceId = get_namespace_oid(schemaname, 0);

 }
 else
 {

  recomputeNamespacePath();
  if (activeTempCreationPending)
  {

   AccessTempTableNamespace(1);
   return myTempNamespace;
  }
  namespaceId = activeCreationNamespace;
  if (!OidIsValid(namespaceId))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_SCHEMA),
      errmsg("no schema has been selected to create in")));
 }

 return namespaceId;
}
