
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nRevDeps; size_t* revDeps; scalar_t__ depCount; int * pending_prev; int dumpId; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_9__ {scalar_t__ restorePass; TYPE_1__** tocsByDumpId; } ;
typedef int ParallelReadyList ;
typedef TYPE_2__ ArchiveHandle ;


 int Assert (int) ;
 scalar_t__ _tocEntryRestorePass (TYPE_1__*) ;
 int pending_list_remove (TYPE_1__*) ;
 int pg_log_debug (char*,int ) ;
 int ready_list_insert (int *,TYPE_1__*) ;

__attribute__((used)) static void
reduce_dependencies(ArchiveHandle *AH, TocEntry *te,
     ParallelReadyList *ready_list)
{
 int i;

 pg_log_debug("reducing dependencies for %d", te->dumpId);

 for (i = 0; i < te->nRevDeps; i++)
 {
  TocEntry *otherte = AH->tocsByDumpId[te->revDeps[i]];

  Assert(otherte->depCount > 0);
  otherte->depCount--;
  if (otherte->depCount == 0 &&
   _tocEntryRestorePass(otherte) == AH->restorePass &&
   otherte->pending_prev != ((void*)0) &&
   ready_list != ((void*)0))
  {

   pending_list_remove(otherte);

   ready_list_insert(ready_list, otherte);
  }
 }
}
