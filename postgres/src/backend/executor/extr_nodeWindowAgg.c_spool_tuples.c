
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_11__ {TYPE_1__* ps_ExprContext; scalar_t__ plan; } ;
struct TYPE_12__ {TYPE_2__ ps; } ;
struct TYPE_13__ {int partition_spooled; int spooled_rows; int more_partitions; int buffer; int first_part_slot; int partEqfunction; TYPE_6__* tmpcontext; TYPE_3__ ss; } ;
typedef TYPE_4__ WindowAggState ;
struct TYPE_14__ {scalar_t__ partNumCols; } ;
typedef TYPE_5__ WindowAgg ;
typedef int TupleTableSlot ;
struct TYPE_15__ {int * ecxt_outertuple; int ecxt_innertuple; } ;
struct TYPE_10__ {int ecxt_per_query_memory; } ;
typedef int PlanState ;
typedef int MemoryContext ;
typedef TYPE_6__ ExprContext ;


 int ExecCopySlot (int ,int *) ;
 int * ExecProcNode (int *) ;
 int ExecQualAndReset (int ,TYPE_6__*) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ TupIsNull (int *) ;
 int * outerPlanState (TYPE_4__*) ;
 int tuplestore_in_memory (int ) ;
 int tuplestore_puttupleslot (int ,int *) ;

__attribute__((used)) static void
spool_tuples(WindowAggState *winstate, int64 pos)
{
 WindowAgg *node = (WindowAgg *) winstate->ss.ps.plan;
 PlanState *outerPlan;
 TupleTableSlot *outerslot;
 MemoryContext oldcontext;

 if (!winstate->buffer)
  return;
 if (winstate->partition_spooled)
  return;
 if (!tuplestore_in_memory(winstate->buffer))
  pos = -1;

 outerPlan = outerPlanState(winstate);


 oldcontext = MemoryContextSwitchTo(winstate->ss.ps.ps_ExprContext->ecxt_per_query_memory);

 while (winstate->spooled_rows <= pos || pos == -1)
 {
  outerslot = ExecProcNode(outerPlan);
  if (TupIsNull(outerslot))
  {

   winstate->partition_spooled = 1;
   winstate->more_partitions = 0;
   break;
  }

  if (node->partNumCols > 0)
  {
   ExprContext *econtext = winstate->tmpcontext;

   econtext->ecxt_innertuple = winstate->first_part_slot;
   econtext->ecxt_outertuple = outerslot;


   if (!ExecQualAndReset(winstate->partEqfunction, econtext))
   {



    ExecCopySlot(winstate->first_part_slot, outerslot);
    winstate->partition_spooled = 1;
    winstate->more_partitions = 1;
    break;
   }
  }


  tuplestore_puttupleslot(winstate->buffer, outerslot);
  winstate->spooled_rows++;
 }

 MemoryContextSwitchTo(oldcontext);
}
