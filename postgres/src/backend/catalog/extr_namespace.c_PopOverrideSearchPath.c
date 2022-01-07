
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nestLevel; int creationNamespace; int searchPath; } ;
typedef TYPE_1__ OverrideStackEntry ;


 int ERROR ;
 scalar_t__ GetCurrentTransactionNestLevel () ;
 scalar_t__ NIL ;
 int activeCreationNamespace ;
 int activeSearchPath ;
 int activeTempCreationPending ;
 int baseCreationNamespace ;
 int baseSearchPath ;
 int baseTempCreationPending ;
 int elog (int ,char*) ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;
 int list_free (int ) ;
 scalar_t__ overrideStack ;
 int pfree (TYPE_1__*) ;

void
PopOverrideSearchPath(void)
{
 OverrideStackEntry *entry;


 if (overrideStack == NIL)
  elog(ERROR, "bogus PopOverrideSearchPath call");
 entry = (OverrideStackEntry *) linitial(overrideStack);
 if (entry->nestLevel != GetCurrentTransactionNestLevel())
  elog(ERROR, "bogus PopOverrideSearchPath call");


 overrideStack = list_delete_first(overrideStack);
 list_free(entry->searchPath);
 pfree(entry);


 if (overrideStack)
 {
  entry = (OverrideStackEntry *) linitial(overrideStack);
  activeSearchPath = entry->searchPath;
  activeCreationNamespace = entry->creationNamespace;
  activeTempCreationPending = 0;
 }
 else
 {

  activeSearchPath = baseSearchPath;
  activeCreationNamespace = baseCreationNamespace;
  activeTempCreationPending = baseTempCreationPending;
 }
}
