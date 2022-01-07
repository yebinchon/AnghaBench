
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int AccessTempTableNamespace (int) ;
 scalar_t__ activeCreationNamespace ;
 int activeSearchPath ;
 scalar_t__ activeTempCreationPending ;
 scalar_t__ linitial_oid (int *) ;
 int * list_copy (int ) ;
 int * list_delete_first (int *) ;
 int recomputeNamespacePath () ;

List *
fetch_search_path(bool includeImplicit)
{
 List *result;

 recomputeNamespacePath();
 if (activeTempCreationPending)
 {
  AccessTempTableNamespace(1);
  recomputeNamespacePath();
 }

 result = list_copy(activeSearchPath);
 if (!includeImplicit)
 {
  while (result && linitial_oid(result) != activeCreationNamespace)
   result = list_delete_first(result);
 }

 return result;
}
