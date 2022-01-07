
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ addTemp; scalar_t__ addCatalog; int schemas; } ;
struct TYPE_5__ {int creationNamespace; int * searchPath; int nestLevel; } ;
typedef TYPE_1__ OverrideStackEntry ;
typedef TYPE_2__ OverrideSearchPath ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int List ;


 int GetCurrentTransactionNestLevel () ;
 int InvalidOid ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 scalar_t__ OidIsValid (int ) ;
 int PG_CATALOG_NAMESPACE ;
 int TopMemoryContext ;
 int activeCreationNamespace ;
 int * activeSearchPath ;
 int activeTempCreationPending ;
 int lcons (TYPE_1__*,int ) ;
 int * lcons_oid (int ,int *) ;
 int linitial_oid (int *) ;
 int * list_copy (int ) ;
 int myTempNamespace ;
 int overrideStack ;
 scalar_t__ palloc (int) ;

void
PushOverrideSearchPath(OverrideSearchPath *newpath)
{
 OverrideStackEntry *entry;
 List *oidlist;
 Oid firstNS;
 MemoryContext oldcxt;





 oldcxt = MemoryContextSwitchTo(TopMemoryContext);

 oidlist = list_copy(newpath->schemas);




 if (oidlist == NIL)
  firstNS = InvalidOid;
 else
  firstNS = linitial_oid(oidlist);






 if (newpath->addCatalog)
  oidlist = lcons_oid(PG_CATALOG_NAMESPACE, oidlist);

 if (newpath->addTemp && OidIsValid(myTempNamespace))
  oidlist = lcons_oid(myTempNamespace, oidlist);




 entry = (OverrideStackEntry *) palloc(sizeof(OverrideStackEntry));
 entry->searchPath = oidlist;
 entry->creationNamespace = firstNS;
 entry->nestLevel = GetCurrentTransactionNestLevel();

 overrideStack = lcons(entry, overrideStack);


 activeSearchPath = entry->searchPath;
 activeCreationNamespace = entry->creationNamespace;
 activeTempCreationPending = 0;

 MemoryContextSwitchTo(oldcxt);
}
