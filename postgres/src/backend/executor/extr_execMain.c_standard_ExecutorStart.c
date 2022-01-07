
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ paramExecTypes; scalar_t__ rowMarks; int jitFlags; int hasModifyingCTE; } ;
struct TYPE_8__ {int es_top_eflags; int es_jit_flags; int es_instrument; void* es_crosscheck_snapshot; void* es_snapshot; void* es_output_cid; int es_queryEnv; int es_sourceText; int * es_param_exec_vals; int es_param_list_info; int es_query_cxt; } ;
struct TYPE_7__ {int operation; TYPE_5__* plannedstmt; int instrument_options; int crosscheck_snapshot; int snapshot; int queryEnv; int sourceText; int params; TYPE_2__* estate; } ;
typedef TYPE_1__ QueryDesc ;
typedef int ParamExecData ;
typedef int MemoryContext ;
typedef TYPE_2__ EState ;


 int AfterTriggerBeginQuery () ;
 int Assert (int ) ;




 TYPE_2__* CreateExecutorState () ;
 int ERROR ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int EXEC_FLAG_SKIP_TRIGGERS ;
 int ExecCheckXactReadOnly (TYPE_5__*) ;
 void* GetCurrentCommandId (int) ;
 int InitPlan (TYPE_1__*,int) ;
 scalar_t__ IsInParallelMode () ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NIL ;
 void* RegisterSnapshot (int ) ;
 scalar_t__ XactReadOnly ;
 int elog (int ,char*,int) ;
 int list_length (scalar_t__) ;
 scalar_t__ palloc0 (int) ;

void
standard_ExecutorStart(QueryDesc *queryDesc, int eflags)
{
 EState *estate;
 MemoryContext oldcontext;


 Assert(queryDesc != ((void*)0));
 Assert(queryDesc->estate == ((void*)0));
 if ((XactReadOnly || IsInParallelMode()) &&
  !(eflags & EXEC_FLAG_EXPLAIN_ONLY))
  ExecCheckXactReadOnly(queryDesc->plannedstmt);




 estate = CreateExecutorState();
 queryDesc->estate = estate;

 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);





 estate->es_param_list_info = queryDesc->params;

 if (queryDesc->plannedstmt->paramExecTypes != NIL)
 {
  int nParamExec;

  nParamExec = list_length(queryDesc->plannedstmt->paramExecTypes);
  estate->es_param_exec_vals = (ParamExecData *)
   palloc0(nParamExec * sizeof(ParamExecData));
 }

 estate->es_sourceText = queryDesc->sourceText;




 estate->es_queryEnv = queryDesc->queryEnv;




 switch (queryDesc->operation)
 {
  case 129:





   if (queryDesc->plannedstmt->rowMarks != NIL ||
    queryDesc->plannedstmt->hasModifyingCTE)
    estate->es_output_cid = GetCurrentCommandId(1);







   if (!queryDesc->plannedstmt->hasModifyingCTE)
    eflags |= EXEC_FLAG_SKIP_TRIGGERS;
   break;

  case 130:
  case 131:
  case 128:
   estate->es_output_cid = GetCurrentCommandId(1);
   break;

  default:
   elog(ERROR, "unrecognized operation code: %d",
     (int) queryDesc->operation);
   break;
 }




 estate->es_snapshot = RegisterSnapshot(queryDesc->snapshot);
 estate->es_crosscheck_snapshot = RegisterSnapshot(queryDesc->crosscheck_snapshot);
 estate->es_top_eflags = eflags;
 estate->es_instrument = queryDesc->instrument_options;
 estate->es_jit_flags = queryDesc->plannedstmt->jitFlags;





 if (!(eflags & (EXEC_FLAG_SKIP_TRIGGERS | EXEC_FLAG_EXPLAIN_ONLY)))
  AfterTriggerBeginQuery();




 InitPlan(queryDesc, eflags);

 MemoryContextSwitchTo(oldcontext);
}
