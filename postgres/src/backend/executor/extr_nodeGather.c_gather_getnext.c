
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_11__ {int * es_query_dsa; } ;
struct TYPE_8__ {TYPE_4__* state; } ;
struct TYPE_10__ {scalar_t__ nreaders; int need_to_scan_locally; TYPE_2__* pei; TYPE_1__ ps; int * funnel_slot; } ;
struct TYPE_9__ {int * area; } ;
typedef int PlanState ;
typedef int HeapTuple ;
typedef TYPE_3__ GatherState ;
typedef TYPE_4__ EState ;


 int CHECK_FOR_INTERRUPTS () ;
 int * ExecClearTuple (int *) ;
 int * ExecProcNode (int *) ;
 int ExecStoreHeapTuple (int ,int *,int) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int TupIsNull (int *) ;
 int gather_readnext (TYPE_3__*) ;
 int * outerPlanState (TYPE_3__*) ;

__attribute__((used)) static TupleTableSlot *
gather_getnext(GatherState *gatherstate)
{
 PlanState *outerPlan = outerPlanState(gatherstate);
 TupleTableSlot *outerTupleSlot;
 TupleTableSlot *fslot = gatherstate->funnel_slot;
 HeapTuple tup;

 while (gatherstate->nreaders > 0 || gatherstate->need_to_scan_locally)
 {
  CHECK_FOR_INTERRUPTS();

  if (gatherstate->nreaders > 0)
  {
   tup = gather_readnext(gatherstate);

   if (HeapTupleIsValid(tup))
   {
    ExecStoreHeapTuple(tup,
           fslot,
           1);
    return fslot;
   }
  }

  if (gatherstate->need_to_scan_locally)
  {
   EState *estate = gatherstate->ps.state;


   estate->es_query_dsa =
    gatherstate->pei ? gatherstate->pei->area : ((void*)0);
   outerTupleSlot = ExecProcNode(outerPlan);
   estate->es_query_dsa = ((void*)0);

   if (!TupIsNull(outerTupleSlot))
    return outerTupleSlot;

   gatherstate->need_to_scan_locally = 0;
  }
 }

 return ExecClearTuple(fslot);
}
