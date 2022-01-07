
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dumpId; scalar_t__ nDeps; int* dependencies; int desc; struct TYPE_4__* next; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_5__ {int maxDumpId; int* tableDataId; TYPE_1__** tocsByDumpId; TYPE_1__* toc; } ;
typedef int DumpId ;
typedef TYPE_2__ ArchiveHandle ;


 int fatal (char*) ;
 scalar_t__ pg_malloc0 (int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
buildTocEntryArrays(ArchiveHandle *AH)
{
 DumpId maxDumpId = AH->maxDumpId;
 TocEntry *te;

 AH->tocsByDumpId = (TocEntry **) pg_malloc0((maxDumpId + 1) * sizeof(TocEntry *));
 AH->tableDataId = (DumpId *) pg_malloc0((maxDumpId + 1) * sizeof(DumpId));

 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {

  if (te->dumpId <= 0 || te->dumpId > maxDumpId)
   fatal("bad dumpId");


  AH->tocsByDumpId[te->dumpId] = te;







  if (strcmp(te->desc, "TABLE DATA") == 0 && te->nDeps > 0)
  {
   DumpId tableId = te->dependencies[0];






   if (tableId <= 0 || tableId > maxDumpId)
    fatal("bad table dumpId for TABLE DATA item");

   AH->tableDataId[tableId] = te->dumpId;
  }
 }
}
