
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;
typedef int Datum ;


 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int GetUserId () ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int MemoryContextSwitchTo (int ) ;
 int NAMESPACEOID ;
 int NamespaceCallback ;
 int PG_CATALOG_NAMESPACE ;
 int TopMemoryContext ;
 int activeCreationNamespace ;
 int activeSearchPath ;
 int activeTempCreationPending ;
 int baseCreationNamespace ;
 int baseSearchPath ;
 int baseSearchPathValid ;
 int baseTempCreationPending ;
 int list_make1_oid (int ) ;
 int namespaceUser ;

void
InitializeSearchPath(void)
{
 if (IsBootstrapProcessingMode())
 {




  MemoryContext oldcxt;

  oldcxt = MemoryContextSwitchTo(TopMemoryContext);
  baseSearchPath = list_make1_oid(PG_CATALOG_NAMESPACE);
  MemoryContextSwitchTo(oldcxt);
  baseCreationNamespace = PG_CATALOG_NAMESPACE;
  baseTempCreationPending = 0;
  baseSearchPathValid = 1;
  namespaceUser = GetUserId();
  activeSearchPath = baseSearchPath;
  activeCreationNamespace = baseCreationNamespace;
  activeTempCreationPending = baseTempCreationPending;
 }
 else
 {




  CacheRegisterSyscacheCallback(NAMESPACEOID,
           NamespaceCallback,
           (Datum) 0);

  baseSearchPathValid = 0;
 }
}
