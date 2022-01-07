
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ relpersistence; scalar_t__ schemaname; int relname; scalar_t__ catalogname; } ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;


 int AccessTempTableNamespace (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_UNDEFINED_SCHEMA ;
 int ERROR ;
 int MyDatabaseId ;
 int OidIsValid (int ) ;
 scalar_t__ RELPERSISTENCE_TEMP ;
 int activeCreationNamespace ;
 scalar_t__ activeTempCreationPending ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 char* get_database_name (int ) ;
 int get_namespace_oid (scalar_t__,int) ;
 int myTempNamespace ;
 int recomputeNamespacePath () ;
 scalar_t__ strcmp (scalar_t__,char*) ;

Oid
RangeVarGetCreationNamespace(const RangeVar *newRelation)
{
 Oid namespaceId;




 if (newRelation->catalogname)
 {
  if (strcmp(newRelation->catalogname, get_database_name(MyDatabaseId)) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cross-database references are not implemented: \"%s.%s.%s\"",
       newRelation->catalogname, newRelation->schemaname,
       newRelation->relname)));
 }

 if (newRelation->schemaname)
 {

  if (strcmp(newRelation->schemaname, "pg_temp") == 0)
  {

   AccessTempTableNamespace(0);
   return myTempNamespace;
  }

  namespaceId = get_namespace_oid(newRelation->schemaname, 0);

 }
 else if (newRelation->relpersistence == RELPERSISTENCE_TEMP)
 {

  AccessTempTableNamespace(0);
  return myTempNamespace;
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
