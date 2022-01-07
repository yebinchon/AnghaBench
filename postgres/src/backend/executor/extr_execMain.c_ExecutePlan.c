
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int TupleTableSlot ;
struct TYPE_8__ {int (* receiveSlot ) (int *,TYPE_2__*) ;} ;
struct TYPE_7__ {int es_use_parallel_mode; int es_top_eflags; int es_processed; int * es_junkFilter; int es_direction; } ;
typedef int ScanDirection ;
typedef int PlanState ;
typedef TYPE_1__ EState ;
typedef TYPE_2__ DestReceiver ;
typedef scalar_t__ CmdType ;


 scalar_t__ CMD_SELECT ;
 int EXEC_FLAG_BACKWARD ;
 int EnterParallelMode () ;
 int * ExecFilterJunk (int *,int *) ;
 int * ExecProcNode (int *) ;
 int ExecShutdownNode (int *) ;
 int ExitParallelMode () ;
 int ResetPerTupleExprContext (TYPE_1__*) ;
 scalar_t__ TupIsNull (int *) ;
 int stub1 (int *,TYPE_2__*) ;

__attribute__((used)) static void
ExecutePlan(EState *estate,
   PlanState *planstate,
   bool use_parallel_mode,
   CmdType operation,
   bool sendTuples,
   uint64 numberTuples,
   ScanDirection direction,
   DestReceiver *dest,
   bool execute_once)
{
 TupleTableSlot *slot;
 uint64 current_tuple_count;




 current_tuple_count = 0;




 estate->es_direction = direction;





 if (!execute_once)
  use_parallel_mode = 0;

 estate->es_use_parallel_mode = use_parallel_mode;
 if (use_parallel_mode)
  EnterParallelMode();




 for (;;)
 {

  ResetPerTupleExprContext(estate);




  slot = ExecProcNode(planstate);





  if (TupIsNull(slot))
   break;
  if (estate->es_junkFilter != ((void*)0))
   slot = ExecFilterJunk(estate->es_junkFilter, slot);





  if (sendTuples)
  {





   if (!dest->receiveSlot(slot, dest))
    break;
  }






  if (operation == CMD_SELECT)
   (estate->es_processed)++;






  current_tuple_count++;
  if (numberTuples && numberTuples == current_tuple_count)
   break;
 }





 if (!(estate->es_top_eflags & EXEC_FLAG_BACKWARD))
  (void) ExecShutdownNode(planstate);

 if (use_parallel_mode)
  ExitParallelMode();
}
