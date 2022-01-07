
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_18__ {scalar_t__ analyze; scalar_t__ summary; scalar_t__ costs; scalar_t__ buffers; scalar_t__ timing; } ;
struct TYPE_17__ {scalar_t__ skipData; } ;
struct TYPE_16__ {scalar_t__ commandType; } ;
typedef int ScanDirection ;
typedef int QueryEnvironment ;
typedef int QueryDesc ;
typedef TYPE_1__ PlannedStmt ;
typedef int ParamListInfo ;
typedef TYPE_2__ IntoClause ;
typedef TYPE_3__ ExplainState ;
typedef int DestReceiver ;


 int Assert (int) ;
 scalar_t__ CMD_UTILITY ;
 int CommandCounterIncrement () ;
 int * CreateIntoRelDestReceiver (TYPE_2__*) ;
 int * CreateQueryDesc (TYPE_1__*,char const*,int ,int ,int *,int ,int *,int) ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int ExecutorEnd (int *) ;
 int ExecutorFinish (int *) ;
 int ExecutorRun (int *,int ,long,int) ;
 int ExecutorStart (int *,int) ;
 int ExplainCloseGroup (char*,int *,int,TYPE_3__*) ;
 int ExplainOpenGroup (char*,int *,int,TYPE_3__*) ;
 int ExplainPrintJITSummary (TYPE_3__*,int *) ;
 int ExplainPrintPlan (TYPE_3__*,int *) ;
 int ExplainPrintTriggers (TYPE_3__*,int *) ;
 int ExplainPropertyFloat (char*,char*,double,int,TYPE_3__*) ;
 int ForwardScanDirection ;
 int FreeQueryDesc (int *) ;
 int GetActiveSnapshot () ;
 int GetIntoRelEFlags (TYPE_2__*) ;
 int INSTRUMENT_BUFFERS ;
 int INSTRUMENT_ROWS ;
 int INSTRUMENT_TIMER ;
 double INSTR_TIME_GET_DOUBLE (int const) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int InvalidSnapshot ;
 int NoMovementScanDirection ;
 int * None_Receiver ;
 int PopActiveSnapshot () ;
 int PushCopiedSnapshot (int ) ;
 int UpdateActiveSnapshotCommandId () ;
 scalar_t__ elapsed_time (int *) ;

void
ExplainOnePlan(PlannedStmt *plannedstmt, IntoClause *into, ExplainState *es,
      const char *queryString, ParamListInfo params,
      QueryEnvironment *queryEnv, const instr_time *planduration)
{
 DestReceiver *dest;
 QueryDesc *queryDesc;
 instr_time starttime;
 double totaltime = 0;
 int eflags;
 int instrument_option = 0;

 Assert(plannedstmt->commandType != CMD_UTILITY);

 if (es->analyze && es->timing)
  instrument_option |= INSTRUMENT_TIMER;
 else if (es->analyze)
  instrument_option |= INSTRUMENT_ROWS;

 if (es->buffers)
  instrument_option |= INSTRUMENT_BUFFERS;






 INSTR_TIME_SET_CURRENT(starttime);





 PushCopiedSnapshot(GetActiveSnapshot());
 UpdateActiveSnapshotCommandId();





 if (into)
  dest = CreateIntoRelDestReceiver(into);
 else
  dest = None_Receiver;


 queryDesc = CreateQueryDesc(plannedstmt, queryString,
        GetActiveSnapshot(), InvalidSnapshot,
        dest, params, queryEnv, instrument_option);


 if (es->analyze)
  eflags = 0;
 else
  eflags = EXEC_FLAG_EXPLAIN_ONLY;
 if (into)
  eflags |= GetIntoRelEFlags(into);


 ExecutorStart(queryDesc, eflags);


 if (es->analyze)
 {
  ScanDirection dir;


  if (into && into->skipData)
   dir = NoMovementScanDirection;
  else
   dir = ForwardScanDirection;


  ExecutorRun(queryDesc, dir, 0L, 1);


  ExecutorFinish(queryDesc);


  totaltime += elapsed_time(&starttime);
 }

 ExplainOpenGroup("Query", ((void*)0), 1, es);


 ExplainPrintPlan(es, queryDesc);

 if (es->summary && planduration)
 {
  double plantime = INSTR_TIME_GET_DOUBLE(*planduration);

  ExplainPropertyFloat("Planning Time", "ms", 1000.0 * plantime, 3, es);
 }


 if (es->analyze)
  ExplainPrintTriggers(es, queryDesc);







 if (es->costs)
  ExplainPrintJITSummary(es, queryDesc);





 INSTR_TIME_SET_CURRENT(starttime);

 ExecutorEnd(queryDesc);

 FreeQueryDesc(queryDesc);

 PopActiveSnapshot();


 if (es->analyze)
  CommandCounterIncrement();

 totaltime += elapsed_time(&starttime);







 if (es->summary && es->analyze)
  ExplainPropertyFloat("Execution Time", "ms", 1000.0 * totaltime, 3,
        es);

 ExplainCloseGroup("Query", ((void*)0), 1, es);
}
