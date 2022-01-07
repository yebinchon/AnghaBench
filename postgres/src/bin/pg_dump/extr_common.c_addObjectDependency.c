
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nDeps; int allocDeps; int * dependencies; } ;
typedef TYPE_1__ DumpableObject ;
typedef int DumpId ;


 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_realloc (int *,int) ;

void
addObjectDependency(DumpableObject *dobj, DumpId refId)
{
 if (dobj->nDeps >= dobj->allocDeps)
 {
  if (dobj->allocDeps <= 0)
  {
   dobj->allocDeps = 16;
   dobj->dependencies = (DumpId *)
    pg_malloc(dobj->allocDeps * sizeof(DumpId));
  }
  else
  {
   dobj->allocDeps *= 2;
   dobj->dependencies = (DumpId *)
    pg_realloc(dobj->dependencies,
         dobj->allocDeps * sizeof(DumpId));
  }
 }
 dobj->dependencies[dobj->nDeps++] = refId;
}
