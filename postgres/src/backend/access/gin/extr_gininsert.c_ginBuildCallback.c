
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_11__ {TYPE_1__* origTupdesc; } ;
struct TYPE_10__ {long allocatedMemory; } ;
struct TYPE_9__ {TYPE_3__ accum; int tmpCtx; int buildStats; TYPE_6__ ginstate; } ;
struct TYPE_8__ {int natts; } ;
typedef long Size ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef int MemoryContext ;
typedef int ItemPointerData ;
typedef int ItemPointer ;
typedef int GinNullCategory ;
typedef TYPE_2__ GinBuildState ;
typedef int Datum ;


 int CHECK_FOR_INTERRUPTS () ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int ginBeginBAScan (TYPE_3__*) ;
 int ginEntryInsert (TYPE_6__*,int ,int ,int ,int *,int ,int *) ;
 int * ginGetBAEntry (TYPE_3__*,int *,int *,int *,int *) ;
 int ginHeapTupleBulkInsert (TYPE_2__*,int ,int ,int,int ) ;
 int ginInitBA (TYPE_3__*) ;
 scalar_t__ maintenance_work_mem ;

__attribute__((used)) static void
ginBuildCallback(Relation index, ItemPointer tid, Datum *values,
     bool *isnull, bool tupleIsAlive, void *state)
{
 GinBuildState *buildstate = (GinBuildState *) state;
 MemoryContext oldCtx;
 int i;

 oldCtx = MemoryContextSwitchTo(buildstate->tmpCtx);

 for (i = 0; i < buildstate->ginstate.origTupdesc->natts; i++)
  ginHeapTupleBulkInsert(buildstate, (OffsetNumber) (i + 1),
          values[i], isnull[i], tid);


 if (buildstate->accum.allocatedMemory >= (Size) maintenance_work_mem * 1024L)
 {
  ItemPointerData *list;
  Datum key;
  GinNullCategory category;
  uint32 nlist;
  OffsetNumber attnum;

  ginBeginBAScan(&buildstate->accum);
  while ((list = ginGetBAEntry(&buildstate->accum,
          &attnum, &key, &category, &nlist)) != ((void*)0))
  {

   CHECK_FOR_INTERRUPTS();
   ginEntryInsert(&buildstate->ginstate, attnum, key, category,
         list, nlist, &buildstate->buildStats);
  }

  MemoryContextReset(buildstate->tmpCtx);
  ginInitBA(&buildstate->accum);
 }

 MemoryContextSwitchTo(oldCtx);
}
