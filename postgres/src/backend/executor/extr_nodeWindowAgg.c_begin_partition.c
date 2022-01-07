
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* WindowStatePerFunc ;
typedef TYPE_4__* WindowObject ;
struct TYPE_9__ {scalar_t__ plan; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_13__ {int frameOptions; int numfuncs; int partition_spooled; int framehead_valid; int frametail_valid; int grouptail_valid; int grouptailpos; int more_partitions; scalar_t__ numaggs; int framehead_ptr; int frametail_ptr; int grouptail_ptr; scalar_t__ spooled_rows; int * first_part_slot; int buffer; TYPE_3__* perfunc; scalar_t__ aggregatedupto; scalar_t__ aggregatedbase; TYPE_4__* agg_winobj; scalar_t__ current_ptr; scalar_t__ frametail_slot; scalar_t__ framehead_slot; scalar_t__ agg_row_slot; scalar_t__ groupheadpos; scalar_t__ frametailgroup; scalar_t__ frameheadgroup; scalar_t__ currentgroup; scalar_t__ frametailpos; scalar_t__ frameheadpos; scalar_t__ currentpos; TYPE_2__ ss; } ;
typedef TYPE_5__ WindowAggState ;
struct TYPE_14__ {scalar_t__ ordNumCols; } ;
typedef TYPE_6__ WindowAgg ;
typedef int TupleTableSlot ;
struct TYPE_12__ {int markpos; int seekpos; void* readptr; void* markptr; } ;
struct TYPE_11__ {TYPE_4__* winobj; int plain_agg; } ;
typedef int PlanState ;


 int EXEC_FLAG_BACKWARD ;
 int ExecClearTuple (scalar_t__) ;
 int ExecCopySlot (int *,int *) ;
 int * ExecProcNode (int *) ;
 int FRAMEOPTION_END_CURRENT_ROW ;
 int FRAMEOPTION_END_OFFSET ;
 int FRAMEOPTION_EXCLUDE_GROUP ;
 int FRAMEOPTION_EXCLUDE_TIES ;
 int FRAMEOPTION_EXCLUSION ;
 int FRAMEOPTION_GROUPS ;
 int FRAMEOPTION_RANGE ;
 int FRAMEOPTION_START_CURRENT_ROW ;
 int FRAMEOPTION_START_OFFSET ;
 int FRAMEOPTION_START_UNBOUNDED_PRECEDING ;
 scalar_t__ TupIsNull (int *) ;
 int * outerPlanState (TYPE_5__*) ;
 void* tuplestore_alloc_read_pointer (int ,int) ;
 int tuplestore_begin_heap (int,int,int ) ;
 int tuplestore_puttupleslot (int ,int *) ;
 int tuplestore_set_eflags (int ,int ) ;
 int work_mem ;

__attribute__((used)) static void
begin_partition(WindowAggState *winstate)
{
 WindowAgg *node = (WindowAgg *) winstate->ss.ps.plan;
 PlanState *outerPlan = outerPlanState(winstate);
 int frameOptions = winstate->frameOptions;
 int numfuncs = winstate->numfuncs;
 int i;

 winstate->partition_spooled = 0;
 winstate->framehead_valid = 0;
 winstate->frametail_valid = 0;
 winstate->grouptail_valid = 0;
 winstate->spooled_rows = 0;
 winstate->currentpos = 0;
 winstate->frameheadpos = 0;
 winstate->frametailpos = 0;
 winstate->currentgroup = 0;
 winstate->frameheadgroup = 0;
 winstate->frametailgroup = 0;
 winstate->groupheadpos = 0;
 winstate->grouptailpos = -1;
 ExecClearTuple(winstate->agg_row_slot);
 if (winstate->framehead_slot)
  ExecClearTuple(winstate->framehead_slot);
 if (winstate->frametail_slot)
  ExecClearTuple(winstate->frametail_slot);





 if (TupIsNull(winstate->first_part_slot))
 {
  TupleTableSlot *outerslot = ExecProcNode(outerPlan);

  if (!TupIsNull(outerslot))
   ExecCopySlot(winstate->first_part_slot, outerslot);
  else
  {

   winstate->partition_spooled = 1;
   winstate->more_partitions = 0;
   return;
  }
 }


 winstate->buffer = tuplestore_begin_heap(0, 0, work_mem);






 winstate->current_ptr = 0;


 tuplestore_set_eflags(winstate->buffer, 0);


 if (winstate->numaggs > 0)
 {
  WindowObject agg_winobj = winstate->agg_winobj;
  int readptr_flags = 0;





  if (!(frameOptions & FRAMEOPTION_START_UNBOUNDED_PRECEDING) ||
   (frameOptions & FRAMEOPTION_EXCLUSION))
  {

   agg_winobj->markptr = tuplestore_alloc_read_pointer(winstate->buffer, 0);

   readptr_flags |= EXEC_FLAG_BACKWARD;
  }

  agg_winobj->readptr = tuplestore_alloc_read_pointer(winstate->buffer,
               readptr_flags);
  agg_winobj->markpos = -1;
  agg_winobj->seekpos = -1;


  winstate->aggregatedbase = 0;
  winstate->aggregatedupto = 0;
 }


 for (i = 0; i < numfuncs; i++)
 {
  WindowStatePerFunc perfuncstate = &(winstate->perfunc[i]);

  if (!perfuncstate->plain_agg)
  {
   WindowObject winobj = perfuncstate->winobj;

   winobj->markptr = tuplestore_alloc_read_pointer(winstate->buffer,
               0);
   winobj->readptr = tuplestore_alloc_read_pointer(winstate->buffer,
               EXEC_FLAG_BACKWARD);
   winobj->markpos = -1;
   winobj->seekpos = -1;
  }
 }
 winstate->framehead_ptr = winstate->frametail_ptr = -1;

 if (frameOptions & (FRAMEOPTION_RANGE | FRAMEOPTION_GROUPS))
 {
  if (((frameOptions & FRAMEOPTION_START_CURRENT_ROW) &&
    node->ordNumCols != 0) ||
   (frameOptions & FRAMEOPTION_START_OFFSET))
   winstate->framehead_ptr =
    tuplestore_alloc_read_pointer(winstate->buffer, 0);
  if (((frameOptions & FRAMEOPTION_END_CURRENT_ROW) &&
    node->ordNumCols != 0) ||
   (frameOptions & FRAMEOPTION_END_OFFSET))
   winstate->frametail_ptr =
    tuplestore_alloc_read_pointer(winstate->buffer, 0);
 }
 winstate->grouptail_ptr = -1;

 if ((frameOptions & (FRAMEOPTION_EXCLUDE_GROUP |
       FRAMEOPTION_EXCLUDE_TIES)) &&
  node->ordNumCols != 0)
 {
  winstate->grouptail_ptr =
   tuplestore_alloc_read_pointer(winstate->buffer, 0);
 }





 tuplestore_puttupleslot(winstate->buffer, winstate->first_part_slot);
 winstate->spooled_rows++;
}
