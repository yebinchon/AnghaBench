
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_20__ {int* relsubs_done; int ** relsubs_rowmark; int ** relsubs_slot; } ;
struct TYPE_19__ {TYPE_7__* es_epq_active; } ;
struct TYPE_18__ {int scanrelid; } ;
struct TYPE_16__ {scalar_t__ plan; TYPE_6__* state; } ;
struct TYPE_17__ {int * ss_ScanTupleSlot; TYPE_1__ ps; } ;
typedef TYPE_2__ ScanState ;
typedef TYPE_3__ Scan ;
typedef int Index ;
typedef int (* ExecScanRecheckMtd ) (TYPE_2__*,int *) ;
typedef int * (* ExecScanAccessMtd ) (TYPE_2__*) ;
typedef TYPE_6__ EState ;
typedef TYPE_7__ EPQState ;


 int Assert (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int EvalPlanQualFetchRowMark (TYPE_7__*,int,int *) ;
 int * ExecClearTuple (int *) ;
 scalar_t__ TupIsNull (int *) ;
 int stub1 (TYPE_2__*,int *) ;
 int stub2 (TYPE_2__*,int *) ;
 int stub3 (TYPE_2__*,int *) ;
 int * stub4 (TYPE_2__*) ;

__attribute__((used)) static inline TupleTableSlot *
ExecScanFetch(ScanState *node,
     ExecScanAccessMtd accessMtd,
     ExecScanRecheckMtd recheckMtd)
{
 EState *estate = node->ps.state;

 CHECK_FOR_INTERRUPTS();

 if (estate->es_epq_active != ((void*)0))
 {
  EPQState *epqstate = estate->es_epq_active;






  Index scanrelid = ((Scan *) node->ps.plan)->scanrelid;

  if (scanrelid == 0)
  {







   TupleTableSlot *slot = node->ss_ScanTupleSlot;

   if (!(*recheckMtd) (node, slot))
    ExecClearTuple(slot);
   return slot;
  }
  else if (epqstate->relsubs_done[scanrelid - 1])
  {





   TupleTableSlot *slot = node->ss_ScanTupleSlot;


   return ExecClearTuple(slot);
  }
  else if (epqstate->relsubs_slot[scanrelid - 1] != ((void*)0))
  {




   TupleTableSlot *slot = epqstate->relsubs_slot[scanrelid - 1];

   Assert(epqstate->relsubs_rowmark[scanrelid - 1] == ((void*)0));


   epqstate->relsubs_done[scanrelid - 1] = 1;


   if (TupIsNull(slot))
    return ((void*)0);


   if (!(*recheckMtd) (node, slot))
    return ExecClearTuple(slot);

   return slot;
  }
  else if (epqstate->relsubs_rowmark[scanrelid - 1] != ((void*)0))
  {




   TupleTableSlot *slot = node->ss_ScanTupleSlot;


   epqstate->relsubs_done[scanrelid - 1] = 1;

   if (!EvalPlanQualFetchRowMark(epqstate, scanrelid, slot))
    return ((void*)0);


   if (TupIsNull(slot))
    return ((void*)0);


   if (!(*recheckMtd) (node, slot))
    return ExecClearTuple(slot);

   return slot;
  }
 }




 return (*accessMtd) (node);
}
