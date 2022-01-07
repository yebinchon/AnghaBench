
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_13__ {int (* rShutdown ) (TYPE_4__*) ;int (* rStartup ) (TYPE_4__*,scalar_t__,int ) ;} ;
struct TYPE_12__ {int es_top_eflags; scalar_t__ es_processed; int es_query_cxt; } ;
struct TYPE_11__ {scalar_t__ operation; int already_executed; scalar_t__ totaltime; TYPE_1__* plannedstmt; int planstate; int tupDesc; TYPE_4__* dest; TYPE_3__* estate; } ;
struct TYPE_10__ {int parallelModeNeeded; scalar_t__ hasReturning; } ;
typedef int ScanDirection ;
typedef TYPE_2__ QueryDesc ;
typedef int MemoryContext ;
typedef TYPE_3__ EState ;
typedef TYPE_4__ DestReceiver ;
typedef scalar_t__ CmdType ;


 int Assert (int) ;
 scalar_t__ CMD_SELECT ;
 int ERROR ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int ExecutePlan (TYPE_3__*,int ,int ,scalar_t__,int,int ,int ,TYPE_4__*,int) ;
 int InstrStartNode (scalar_t__) ;
 int InstrStopNode (scalar_t__,scalar_t__) ;
 int MemoryContextSwitchTo (int ) ;
 int ScanDirectionIsNoMovement (int ) ;
 int elog (int ,char*) ;
 int stub1 (TYPE_4__*,scalar_t__,int ) ;
 int stub2 (TYPE_4__*) ;

void
standard_ExecutorRun(QueryDesc *queryDesc,
      ScanDirection direction, uint64 count, bool execute_once)
{
 EState *estate;
 CmdType operation;
 DestReceiver *dest;
 bool sendTuples;
 MemoryContext oldcontext;


 Assert(queryDesc != ((void*)0));

 estate = queryDesc->estate;

 Assert(estate != ((void*)0));
 Assert(!(estate->es_top_eflags & EXEC_FLAG_EXPLAIN_ONLY));




 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);


 if (queryDesc->totaltime)
  InstrStartNode(queryDesc->totaltime);




 operation = queryDesc->operation;
 dest = queryDesc->dest;




 estate->es_processed = 0;

 sendTuples = (operation == CMD_SELECT ||
      queryDesc->plannedstmt->hasReturning);

 if (sendTuples)
  dest->rStartup(dest, operation, queryDesc->tupDesc);




 if (!ScanDirectionIsNoMovement(direction))
 {
  if (execute_once && queryDesc->already_executed)
   elog(ERROR, "can't re-execute query flagged for single execution");
  queryDesc->already_executed = 1;

  ExecutePlan(estate,
     queryDesc->planstate,
     queryDesc->plannedstmt->parallelModeNeeded,
     operation,
     sendTuples,
     count,
     direction,
     dest,
     execute_once);
 }




 if (sendTuples)
  dest->rShutdown(dest);

 if (queryDesc->totaltime)
  InstrStopNode(queryDesc->totaltime, estate->es_processed);

 MemoryContextSwitchTo(oldcontext);
}
