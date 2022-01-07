
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int depCount; int nDeps; size_t* revDeps; int nRevDeps; size_t* dependencies; size_t dumpId; scalar_t__ nLockDeps; int * lockDeps; struct TYPE_7__* next; int desc; int * pending_next; int * pending_prev; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_8__ {scalar_t__ version; size_t maxDumpId; TYPE_1__* toc; TYPE_1__** tocsByDumpId; } ;
typedef size_t DumpId ;
typedef TYPE_2__ ArchiveHandle ;


 scalar_t__ K_VERS_1_11 ;
 int identify_locking_dependencies (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ pg_malloc (int) ;
 int repoint_table_dependencies (TYPE_2__*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
fix_dependencies(ArchiveHandle *AH)
{
 TocEntry *te;
 int i;





 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  te->depCount = te->nDeps;
  te->revDeps = ((void*)0);
  te->nRevDeps = 0;
  te->pending_prev = ((void*)0);
  te->pending_next = ((void*)0);
 }






 repoint_table_dependencies(AH);






 if (AH->version < K_VERS_1_11)
 {
  for (te = AH->toc->next; te != AH->toc; te = te->next)
  {
   if (strcmp(te->desc, "BLOB COMMENTS") == 0 && te->nDeps == 0)
   {
    TocEntry *te2;

    for (te2 = AH->toc->next; te2 != AH->toc; te2 = te2->next)
    {
     if (strcmp(te2->desc, "BLOBS") == 0)
     {
      te->dependencies = (DumpId *) pg_malloc(sizeof(DumpId));
      te->dependencies[0] = te2->dumpId;
      te->nDeps++;
      te->depCount++;
      break;
     }
    }
    break;
   }
  }
 }
 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  for (i = 0; i < te->nDeps; i++)
  {
   DumpId depid = te->dependencies[i];

   if (depid <= AH->maxDumpId && AH->tocsByDumpId[depid] != ((void*)0))
    AH->tocsByDumpId[depid]->nRevDeps++;
   else
    te->depCount--;
  }
 }





 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  if (te->nRevDeps > 0)
   te->revDeps = (DumpId *) pg_malloc(te->nRevDeps * sizeof(DumpId));
  te->nRevDeps = 0;
 }





 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  for (i = 0; i < te->nDeps; i++)
  {
   DumpId depid = te->dependencies[i];

   if (depid <= AH->maxDumpId && AH->tocsByDumpId[depid] != ((void*)0))
   {
    TocEntry *otherte = AH->tocsByDumpId[depid];

    otherte->revDeps[otherte->nRevDeps++] = te->dumpId;
   }
  }
 }




 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  te->lockDeps = ((void*)0);
  te->nLockDeps = 0;
  identify_locking_dependencies(AH, te);
 }
}
