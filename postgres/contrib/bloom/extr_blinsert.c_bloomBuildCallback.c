
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
struct TYPE_6__ {int indtuples; int tmpCtx; int count; TYPE_1__ data; int blstate; } ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int ItemPointer ;
typedef int Datum ;
typedef int BloomTuple ;
typedef TYPE_2__ BloomBuildState ;


 int * BloomFormTuple (int *,int ,int *,int*) ;
 scalar_t__ BloomPageAddItem (int *,int ,int *) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int elog (int ,char*) ;
 int flushCachedPage (int ,TYPE_2__*) ;
 int initCachedPage (TYPE_2__*) ;

__attribute__((used)) static void
bloomBuildCallback(Relation index, ItemPointer tid, Datum *values,
       bool *isnull, bool tupleIsAlive, void *state)
{
 BloomBuildState *buildstate = (BloomBuildState *) state;
 MemoryContext oldCtx;
 BloomTuple *itup;

 oldCtx = MemoryContextSwitchTo(buildstate->tmpCtx);

 itup = BloomFormTuple(&buildstate->blstate, tid, values, isnull);


 if (BloomPageAddItem(&buildstate->blstate, buildstate->data.data, itup))
 {

  buildstate->count++;
 }
 else
 {

  flushCachedPage(index, buildstate);

  CHECK_FOR_INTERRUPTS();

  initCachedPage(buildstate);

  if (!BloomPageAddItem(&buildstate->blstate, buildstate->data.data, itup))
  {

   elog(ERROR, "could not add new bloom tuple to empty page");
  }


  buildstate->count++;
 }


 buildstate->indtuples += 1;

 MemoryContextSwitchTo(oldCtx);
 MemoryContextReset(buildstate->tmpCtx);
}
