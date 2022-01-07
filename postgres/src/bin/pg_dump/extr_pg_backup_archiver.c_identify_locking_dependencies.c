
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ section; int nDeps; size_t* dependencies; int nLockDeps; int lockDeps; int desc; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_8__ {size_t maxDumpId; TYPE_1__** tocsByDumpId; } ;
struct TYPE_6__ {int desc; } ;
typedef size_t DumpId ;
typedef TYPE_3__ ArchiveHandle ;


 scalar_t__ SECTION_POST_DATA ;
 int free (size_t*) ;
 scalar_t__ pg_malloc (int) ;
 int pg_realloc (size_t*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
identify_locking_dependencies(ArchiveHandle *AH, TocEntry *te)
{
 DumpId *lockids;
 int nlockids;
 int i;





 if (te->section != SECTION_POST_DATA)
  return;


 if (te->nDeps == 0)
  return;







 if (strcmp(te->desc, "INDEX") == 0)
  return;
 lockids = (DumpId *) pg_malloc(te->nDeps * sizeof(DumpId));
 nlockids = 0;
 for (i = 0; i < te->nDeps; i++)
 {
  DumpId depid = te->dependencies[i];

  if (depid <= AH->maxDumpId && AH->tocsByDumpId[depid] != ((void*)0) &&
   ((strcmp(AH->tocsByDumpId[depid]->desc, "TABLE DATA") == 0) ||
    strcmp(AH->tocsByDumpId[depid]->desc, "TABLE") == 0))
   lockids[nlockids++] = depid;
 }

 if (nlockids == 0)
 {
  free(lockids);
  return;
 }

 te->lockDeps = pg_realloc(lockids, nlockids * sizeof(DumpId));
 te->nLockDeps = nlockids;
}
