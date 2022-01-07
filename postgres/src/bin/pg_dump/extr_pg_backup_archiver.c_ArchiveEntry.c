
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* dependencies; int nDeps; int hadDumper; scalar_t__ dataLength; int * formatData; int dataDumperArg; scalar_t__ dataDumper; int * copyStmt; int * dropStmt; int * defn; int * desc; int * owner; int * tableam; int * tablespace; int * namespace; int * tag; int section; scalar_t__ dumpId; int catalogId; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_10__ {scalar_t__ maxDumpId; int (* ArchiveEntryPtr ) (TYPE_3__*,TYPE_1__*) ;TYPE_1__* toc; int tocCount; } ;
struct TYPE_9__ {int nDeps; scalar_t__ dumpFn; int dumpArg; int deps; scalar_t__ copyStmt; scalar_t__ dropStmt; scalar_t__ createStmt; scalar_t__ description; scalar_t__ owner; scalar_t__ tableam; scalar_t__ tablespace; scalar_t__ namespace; scalar_t__ tag; int section; } ;
typedef scalar_t__ DumpId ;
typedef int CatalogId ;
typedef TYPE_2__ ArchiveOpts ;
typedef TYPE_3__ ArchiveHandle ;
typedef int Archive ;


 int memcpy (scalar_t__*,int ,int) ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_malloc0 (int) ;
 int * pg_strdup (scalar_t__) ;
 int stub1 (TYPE_3__*,TYPE_1__*) ;

TocEntry *
ArchiveEntry(Archive *AHX, CatalogId catalogId, DumpId dumpId,
    ArchiveOpts *opts)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;
 TocEntry *newToc;

 newToc = (TocEntry *) pg_malloc0(sizeof(TocEntry));

 AH->tocCount++;
 if (dumpId > AH->maxDumpId)
  AH->maxDumpId = dumpId;

 newToc->prev = AH->toc->prev;
 newToc->next = AH->toc;
 AH->toc->prev->next = newToc;
 AH->toc->prev = newToc;

 newToc->catalogId = catalogId;
 newToc->dumpId = dumpId;
 newToc->section = opts->section;

 newToc->tag = pg_strdup(opts->tag);
 newToc->namespace = opts->namespace ? pg_strdup(opts->namespace) : ((void*)0);
 newToc->tablespace = opts->tablespace ? pg_strdup(opts->tablespace) : ((void*)0);
 newToc->tableam = opts->tableam ? pg_strdup(opts->tableam) : ((void*)0);
 newToc->owner = opts->owner ? pg_strdup(opts->owner) : ((void*)0);
 newToc->desc = pg_strdup(opts->description);
 newToc->defn = opts->createStmt ? pg_strdup(opts->createStmt) : ((void*)0);
 newToc->dropStmt = opts->dropStmt ? pg_strdup(opts->dropStmt) : ((void*)0);
 newToc->copyStmt = opts->copyStmt ? pg_strdup(opts->copyStmt) : ((void*)0);

 if (opts->nDeps > 0)
 {
  newToc->dependencies = (DumpId *) pg_malloc(opts->nDeps * sizeof(DumpId));
  memcpy(newToc->dependencies, opts->deps, opts->nDeps * sizeof(DumpId));
  newToc->nDeps = opts->nDeps;
 }
 else
 {
  newToc->dependencies = ((void*)0);
  newToc->nDeps = 0;
 }

 newToc->dataDumper = opts->dumpFn;
 newToc->dataDumperArg = opts->dumpArg;
 newToc->hadDumper = opts->dumpFn ? 1 : 0;

 newToc->formatData = ((void*)0);
 newToc->dataLength = 0;

 if (AH->ArchiveEntryPtr != ((void*)0))
  AH->ArchiveEntryPtr(AH, newToc);

 return newToc;
}
