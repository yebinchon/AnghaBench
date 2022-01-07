
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_11__ {int * ecxt_innertuple; int * ecxt_outertuple; } ;
struct TYPE_9__ {int * ps_ResultTupleSlot; TYPE_3__* ps_ExprContext; } ;
struct TYPE_10__ {int setop_done; scalar_t__ numOutput; int * grp_firstTuple; int eqfunction; TYPE_1__ ps; scalar_t__ pergroup; } ;
typedef scalar_t__ SetOpStatePerGroup ;
typedef TYPE_2__ SetOpState ;
typedef int PlanState ;
typedef TYPE_3__ ExprContext ;


 int ExecClearTuple (int *) ;
 void* ExecCopySlotHeapTuple (int *) ;
 int * ExecProcNode (int *) ;
 int ExecQualAndReset (int ,TYPE_3__*) ;
 int ExecStoreHeapTuple (int *,int *,int) ;
 scalar_t__ TupIsNull (int *) ;
 int advance_counts (scalar_t__,int ) ;
 int fetch_tuple_flag (TYPE_2__*,int *) ;
 int initialize_counts (scalar_t__) ;
 int * outerPlanState (TYPE_2__*) ;
 int set_output_count (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static TupleTableSlot *
setop_retrieve_direct(SetOpState *setopstate)
{
 PlanState *outerPlan;
 SetOpStatePerGroup pergroup;
 TupleTableSlot *outerslot;
 TupleTableSlot *resultTupleSlot;
 ExprContext *econtext = setopstate->ps.ps_ExprContext;




 outerPlan = outerPlanState(setopstate);
 pergroup = (SetOpStatePerGroup) setopstate->pergroup;
 resultTupleSlot = setopstate->ps.ps_ResultTupleSlot;




 while (!setopstate->setop_done)
 {




  if (setopstate->grp_firstTuple == ((void*)0))
  {
   outerslot = ExecProcNode(outerPlan);
   if (!TupIsNull(outerslot))
   {

    setopstate->grp_firstTuple = ExecCopySlotHeapTuple(outerslot);
   }
   else
   {

    setopstate->setop_done = 1;
    return ((void*)0);
   }
  }






  ExecStoreHeapTuple(setopstate->grp_firstTuple,
         resultTupleSlot,
         1);
  setopstate->grp_firstTuple = ((void*)0);


  initialize_counts(pergroup);


  advance_counts(pergroup,
        fetch_tuple_flag(setopstate, resultTupleSlot));




  for (;;)
  {
   outerslot = ExecProcNode(outerPlan);
   if (TupIsNull(outerslot))
   {

    setopstate->setop_done = 1;
    break;
   }




   econtext->ecxt_outertuple = resultTupleSlot;
   econtext->ecxt_innertuple = outerslot;

   if (!ExecQualAndReset(setopstate->eqfunction, econtext))
   {



    setopstate->grp_firstTuple = ExecCopySlotHeapTuple(outerslot);
    break;
   }


   advance_counts(pergroup,
         fetch_tuple_flag(setopstate, outerslot));
  }





  set_output_count(setopstate, pergroup);

  if (setopstate->numOutput > 0)
  {
   setopstate->numOutput--;
   return resultTupleSlot;
  }
 }


 ExecClearTuple(resultTupleSlot);
 return ((void*)0);
}
