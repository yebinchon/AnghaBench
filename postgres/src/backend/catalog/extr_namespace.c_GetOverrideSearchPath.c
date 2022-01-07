
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addTemp; int addCatalog; int * schemas; } ;
typedef TYPE_1__ OverrideSearchPath ;
typedef int MemoryContext ;
typedef int List ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PG_CATALOG_NAMESPACE ;
 scalar_t__ activeCreationNamespace ;
 int activeSearchPath ;
 scalar_t__ linitial_oid (int *) ;
 int * list_copy (int ) ;
 int * list_delete_first (int *) ;
 scalar_t__ myTempNamespace ;
 scalar_t__ palloc0 (int) ;
 int recomputeNamespacePath () ;

OverrideSearchPath *
GetOverrideSearchPath(MemoryContext context)
{
 OverrideSearchPath *result;
 List *schemas;
 MemoryContext oldcxt;

 recomputeNamespacePath();

 oldcxt = MemoryContextSwitchTo(context);

 result = (OverrideSearchPath *) palloc0(sizeof(OverrideSearchPath));
 schemas = list_copy(activeSearchPath);
 while (schemas && linitial_oid(schemas) != activeCreationNamespace)
 {
  if (linitial_oid(schemas) == myTempNamespace)
   result->addTemp = 1;
  else
  {
   Assert(linitial_oid(schemas) == PG_CATALOG_NAMESPACE);
   result->addCatalog = 1;
  }
  schemas = list_delete_first(schemas);
 }
 result->schemas = schemas;

 MemoryContextSwitchTo(oldcxt);

 return result;
}
