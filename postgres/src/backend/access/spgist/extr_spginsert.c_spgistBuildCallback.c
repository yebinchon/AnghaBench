
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int indtuples; int tmpCtx; int spgstate; } ;
typedef TYPE_1__ SpGistBuildState ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int ItemPointer ;
typedef int Datum ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int spgdoinsert (int ,int *,int ,int ,int) ;

__attribute__((used)) static void
spgistBuildCallback(Relation index, ItemPointer tid, Datum *values,
     bool *isnull, bool tupleIsAlive, void *state)
{
 SpGistBuildState *buildstate = (SpGistBuildState *) state;
 MemoryContext oldCtx;


 oldCtx = MemoryContextSwitchTo(buildstate->tmpCtx);







 while (!spgdoinsert(index, &buildstate->spgstate, tid,
      *values, *isnull))
 {
  MemoryContextReset(buildstate->tmpCtx);
 }


 buildstate->indtuples += 1;

 MemoryContextSwitchTo(oldCtx);
 MemoryContextReset(buildstate->tmpCtx);
}
