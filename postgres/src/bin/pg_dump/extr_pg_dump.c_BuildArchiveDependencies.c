
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ reqs; int nDeps; int * dependencies; int dumpId; struct TYPE_7__* next; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_9__ {TYPE_1__* toc; } ;
struct TYPE_8__ {scalar_t__ nDeps; } ;
typedef TYPE_2__ DumpableObject ;
typedef int DumpId ;
typedef TYPE_3__ ArchiveHandle ;
typedef int Archive ;


 int findDumpableDependencies (TYPE_3__*,TYPE_2__*,int **,int*,int*) ;
 TYPE_2__* findObjectByDumpId (int ) ;
 int free (int *) ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_realloc (int *,int) ;

__attribute__((used)) static void
BuildArchiveDependencies(Archive *fout)
{
 ArchiveHandle *AH = (ArchiveHandle *) fout;
 TocEntry *te;


 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  DumpableObject *dobj;
  DumpId *dependencies;
  int nDeps;
  int allocDeps;


  if (te->reqs == 0)
   continue;

  if (te->nDeps > 0)
   continue;

  dobj = findObjectByDumpId(te->dumpId);
  if (dobj == ((void*)0))
   continue;

  if (dobj->nDeps <= 0)
   continue;

  allocDeps = 64;
  dependencies = (DumpId *) pg_malloc(allocDeps * sizeof(DumpId));
  nDeps = 0;

  findDumpableDependencies(AH, dobj,
         &dependencies, &nDeps, &allocDeps);

  if (nDeps > 0)
  {
   dependencies = (DumpId *) pg_realloc(dependencies,
             nDeps * sizeof(DumpId));
   te->dependencies = dependencies;
   te->nDeps = nDeps;
  }
  else
   free(dependencies);
 }
}
