
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* ps_ExprContext; scalar_t__ plan; } ;
struct TYPE_11__ {int ss_ScanTupleSlot; TYPE_2__ ps; } ;
struct TYPE_12__ {int grouptail_valid; int grouptailpos; int spooled_rows; int currentpos; int temp_slot_2; TYPE_3__ ss; int buffer; int grouptail_ptr; } ;
typedef TYPE_4__ WindowAggState ;
struct TYPE_13__ {scalar_t__ ordNumCols; } ;
typedef TYPE_5__ WindowAgg ;
struct TYPE_9__ {int ecxt_per_query_memory; } ;
typedef int MemoryContext ;


 int Assert (int) ;
 int ExecClearTuple (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int are_peers (TYPE_4__*,int ,int ) ;
 int spool_tuples (TYPE_4__*,int) ;
 int tuplestore_gettupleslot (int ,int,int,int ) ;
 int tuplestore_select_read_pointer (int ,int ) ;

__attribute__((used)) static void
update_grouptailpos(WindowAggState *winstate)
{
 WindowAgg *node = (WindowAgg *) winstate->ss.ps.plan;
 MemoryContext oldcontext;

 if (winstate->grouptail_valid)
  return;


 oldcontext = MemoryContextSwitchTo(winstate->ss.ps.ps_ExprContext->ecxt_per_query_memory);


 if (node->ordNumCols == 0)
 {
  spool_tuples(winstate, -1);
  winstate->grouptailpos = winstate->spooled_rows;
  winstate->grouptail_valid = 1;
  MemoryContextSwitchTo(oldcontext);
  return;
 }
 Assert(winstate->grouptailpos <= winstate->currentpos);
 tuplestore_select_read_pointer(winstate->buffer,
           winstate->grouptail_ptr);
 for (;;)
 {

  winstate->grouptailpos++;
  spool_tuples(winstate, winstate->grouptailpos);
  if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
          winstate->temp_slot_2))
   break;
  if (winstate->grouptailpos > winstate->currentpos &&
   !are_peers(winstate, winstate->temp_slot_2,
        winstate->ss.ss_ScanTupleSlot))
   break;
 }
 ExecClearTuple(winstate->temp_slot_2);
 winstate->grouptail_valid = 1;

 MemoryContextSwitchTo(oldcontext);
}
