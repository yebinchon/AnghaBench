
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_29__ {scalar_t__ aggstrategy; int numCols; } ;
struct TYPE_23__ {TYPE_5__* ps_ExprContext; } ;
struct TYPE_24__ {int * ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_28__ {int agg_done; int projected_set; int input_done; int current_phase; int numphases; scalar_t__ aggstrategy; int table_filled; int * grp_firstTuple; TYPE_4__* phase; TYPE_3__* perhash; TYPE_5__** aggcontexts; TYPE_2__ ss; int * pergroups; int peragg; TYPE_5__* tmpcontext; } ;
struct TYPE_27__ {int * ecxt_outertuple; int * ecxt_innertuple; } ;
struct TYPE_26__ {scalar_t__ numsets; int* gset_lengths; int * eqfunctions; TYPE_7__* aggnode; } ;
struct TYPE_25__ {int hashiter; int hashtable; } ;
typedef TYPE_5__ ExprContext ;
typedef int AggStatePerGroup ;
typedef int AggStatePerAgg ;
typedef TYPE_6__ AggState ;
typedef TYPE_7__ Agg ;


 scalar_t__ AGG_MIXED ;
 scalar_t__ AGG_PLAIN ;
 int Assert (int) ;
 void* ExecCopySlotHeapTuple (int *) ;
 int ExecForceStoreHeapTuple (int *,int *,int) ;
 int ExecQual (int ,TYPE_5__*) ;
 int ExecQualAndReset (int ,TYPE_5__*) ;
 int Max (scalar_t__,int) ;
 int ReScanExprContext (TYPE_5__*) ;
 int ResetExprContext (TYPE_5__*) ;
 int ResetTupleHashIterator (int ,int *) ;
 scalar_t__ TupIsNull (int *) ;
 int advance_aggregates (TYPE_6__*) ;
 int * agg_retrieve_hash_table (TYPE_6__*) ;
 int * fetch_input_tuple (TYPE_6__*) ;
 int finalize_aggregates (TYPE_6__*,int ,int ) ;
 int initialize_aggregates (TYPE_6__*,int *,int) ;
 int initialize_phase (TYPE_6__*,int) ;
 int lookup_hash_entries (TYPE_6__*) ;
 int prepare_projection_slot (TYPE_6__*,int *,int) ;
 int * project_aggregates (TYPE_6__*) ;
 int select_current_set (TYPE_6__*,int,int) ;

__attribute__((used)) static TupleTableSlot *
agg_retrieve_direct(AggState *aggstate)
{
 Agg *node = aggstate->phase->aggnode;
 ExprContext *econtext;
 ExprContext *tmpcontext;
 AggStatePerAgg peragg;
 AggStatePerGroup *pergroups;
 TupleTableSlot *outerslot;
 TupleTableSlot *firstSlot;
 TupleTableSlot *result;
 bool hasGroupingSets = aggstate->phase->numsets > 0;
 int numGroupingSets = Max(aggstate->phase->numsets, 1);
 int currentSet;
 int nextSetSize;
 int numReset;
 int i;
 econtext = aggstate->ss.ps.ps_ExprContext;
 tmpcontext = aggstate->tmpcontext;

 peragg = aggstate->peragg;
 pergroups = aggstate->pergroups;
 firstSlot = aggstate->ss.ss_ScanTupleSlot;
 while (!aggstate->agg_done)
 {
  ReScanExprContext(econtext);




  if (aggstate->projected_set >= 0 &&
   aggstate->projected_set < numGroupingSets)
   numReset = aggstate->projected_set + 1;
  else
   numReset = numGroupingSets;
  for (i = 0; i < numReset; i++)
  {
   ReScanExprContext(aggstate->aggcontexts[i]);
  }





  if (aggstate->input_done == 1 &&
   aggstate->projected_set >= (numGroupingSets - 1))
  {
   if (aggstate->current_phase < aggstate->numphases - 1)
   {
    initialize_phase(aggstate, aggstate->current_phase + 1);
    aggstate->input_done = 0;
    aggstate->projected_set = -1;
    numGroupingSets = Max(aggstate->phase->numsets, 1);
    node = aggstate->phase->aggnode;
    numReset = numGroupingSets;
   }
   else if (aggstate->aggstrategy == AGG_MIXED)
   {




    initialize_phase(aggstate, 0);
    aggstate->table_filled = 1;
    ResetTupleHashIterator(aggstate->perhash[0].hashtable,
            &aggstate->perhash[0].hashiter);
    select_current_set(aggstate, 0, 1);
    return agg_retrieve_hash_table(aggstate);
   }
   else
   {
    aggstate->agg_done = 1;
    break;
   }
  }






  if (aggstate->projected_set >= 0 &&
   aggstate->projected_set < (numGroupingSets - 1))
   nextSetSize = aggstate->phase->gset_lengths[aggstate->projected_set + 1];
  else
   nextSetSize = 0;
  tmpcontext->ecxt_innertuple = econtext->ecxt_outertuple;
  if (aggstate->input_done ||
   (node->aggstrategy != AGG_PLAIN &&
    aggstate->projected_set != -1 &&
    aggstate->projected_set < (numGroupingSets - 1) &&
    nextSetSize > 0 &&
    !ExecQualAndReset(aggstate->phase->eqfunctions[nextSetSize - 1],
          tmpcontext)))
  {
   aggstate->projected_set += 1;

   Assert(aggstate->projected_set < numGroupingSets);
   Assert(nextSetSize > 0 || aggstate->input_done);
  }
  else
  {





   aggstate->projected_set = 0;





   if (aggstate->grp_firstTuple == ((void*)0))
   {
    outerslot = fetch_input_tuple(aggstate);
    if (!TupIsNull(outerslot))
    {




     aggstate->grp_firstTuple = ExecCopySlotHeapTuple(outerslot);
    }
    else
    {

     if (hasGroupingSets)
     {
      aggstate->input_done = 1;

      while (aggstate->phase->gset_lengths[aggstate->projected_set] > 0)
      {
       aggstate->projected_set += 1;
       if (aggstate->projected_set >= numGroupingSets)
       {






        break;
       }
      }

      if (aggstate->projected_set >= numGroupingSets)
       continue;
     }
     else
     {
      aggstate->agg_done = 1;

      if (node->aggstrategy != AGG_PLAIN)
       return ((void*)0);
     }
    }
   }




   initialize_aggregates(aggstate, pergroups, numReset);

   if (aggstate->grp_firstTuple != ((void*)0))
   {





    ExecForceStoreHeapTuple(aggstate->grp_firstTuple,
          firstSlot, 1);
    aggstate->grp_firstTuple = ((void*)0);


    tmpcontext->ecxt_outertuple = firstSlot;





    for (;;)
    {




     if (aggstate->aggstrategy == AGG_MIXED &&
      aggstate->current_phase == 1)
     {
      lookup_hash_entries(aggstate);
     }


     advance_aggregates(aggstate);


     ResetExprContext(tmpcontext);

     outerslot = fetch_input_tuple(aggstate);
     if (TupIsNull(outerslot))
     {

      if (hasGroupingSets)
      {
       aggstate->input_done = 1;
       break;
      }
      else
      {
       aggstate->agg_done = 1;
       break;
      }
     }

     tmpcontext->ecxt_outertuple = outerslot;





     if (node->aggstrategy != AGG_PLAIN)
     {
      tmpcontext->ecxt_innertuple = firstSlot;
      if (!ExecQual(aggstate->phase->eqfunctions[node->numCols - 1],
           tmpcontext))
      {
       aggstate->grp_firstTuple = ExecCopySlotHeapTuple(outerslot);
       break;
      }
     }
    }
   }
   econtext->ecxt_outertuple = firstSlot;
  }

  Assert(aggstate->projected_set >= 0);

  currentSet = aggstate->projected_set;

  prepare_projection_slot(aggstate, econtext->ecxt_outertuple, currentSet);

  select_current_set(aggstate, currentSet, 0);

  finalize_aggregates(aggstate,
       peragg,
       pergroups[currentSet]);





  result = project_aggregates(aggstate);
  if (result)
   return result;
 }


 return ((void*)0);
}
