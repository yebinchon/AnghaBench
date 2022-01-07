
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ objType; int nDeps; int * dependencies; } ;
typedef TYPE_1__ DumpableObject ;
typedef int DumpId ;
typedef int ArchiveHandle ;


 scalar_t__ DO_POST_DATA_BOUNDARY ;
 scalar_t__ DO_PRE_DATA_BOUNDARY ;
 scalar_t__ TocIDRequired (int *,int ) ;
 TYPE_1__* findObjectByDumpId (int ) ;
 scalar_t__ pg_realloc (int *,int) ;

__attribute__((used)) static void
findDumpableDependencies(ArchiveHandle *AH, DumpableObject *dobj,
       DumpId **dependencies, int *nDeps, int *allocDeps)
{
 int i;





 if (dobj->objType == DO_PRE_DATA_BOUNDARY ||
  dobj->objType == DO_POST_DATA_BOUNDARY)
  return;

 for (i = 0; i < dobj->nDeps; i++)
 {
  DumpId depid = dobj->dependencies[i];

  if (TocIDRequired(AH, depid) != 0)
  {

   if (*nDeps >= *allocDeps)
   {
    *allocDeps *= 2;
    *dependencies = (DumpId *) pg_realloc(*dependencies,
               *allocDeps * sizeof(DumpId));
   }
   (*dependencies)[*nDeps] = depid;
   (*nDeps)++;
  }
  else
  {





   DumpableObject *otherdobj = findObjectByDumpId(depid);

   if (otherdobj)
    findDumpableDependencies(AH, otherdobj,
           dependencies, nDeps, allocDeps);
  }
 }
}
