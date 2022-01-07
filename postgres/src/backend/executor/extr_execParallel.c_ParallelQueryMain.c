
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_17__ ;
typedef struct TYPE_25__ TYPE_11__ ;


typedef int shm_toc ;
typedef scalar_t__ int64 ;
typedef int dsm_segment ;
typedef int dsa_area ;
struct TYPE_35__ {int (* rDestroy ) (TYPE_9__*) ;} ;
struct TYPE_34__ {scalar_t__ tuples_needed; int param_exec; int eflags; int jit_flags; } ;
struct TYPE_33__ {int * seg; int * toc; } ;
struct TYPE_32__ {TYPE_11__* estate; TYPE_17__* planstate; TYPE_1__* plannedstmt; int sourceText; } ;
struct TYPE_31__ {int instrument_options; } ;
struct TYPE_30__ {size_t num_workers; int * jit_instr; } ;
struct TYPE_29__ {int instr; } ;
struct TYPE_28__ {int * es_query_dsa; } ;
struct TYPE_27__ {int jitFlags; } ;
struct TYPE_26__ {TYPE_2__* state; } ;
struct TYPE_25__ {TYPE_3__* es_jit; } ;
typedef TYPE_4__ SharedJitInstrumentation ;
typedef TYPE_5__ SharedExecutorInstrumentation ;
typedef TYPE_6__ QueryDesc ;
typedef TYPE_7__ ParallelWorkerContext ;
typedef TYPE_8__ FixedParallelExecutorState ;
typedef TYPE_9__ DestReceiver ;
typedef int BufferUsage ;


 int Assert (int) ;
 scalar_t__ DsaPointerIsValid (int ) ;
 TYPE_6__* ExecParallelGetQueryDesc (int *,TYPE_9__*,int) ;
 TYPE_9__* ExecParallelGetReceiver (int *,int *) ;
 int ExecParallelInitializeWorker (TYPE_17__*,TYPE_7__*) ;
 int ExecParallelReportInstrumentation (TYPE_17__*,TYPE_5__*) ;
 int ExecSetTupleBound (scalar_t__,TYPE_17__*) ;
 int ExecutorEnd (TYPE_6__*) ;
 int ExecutorFinish (TYPE_6__*) ;
 int ExecutorRun (TYPE_6__*,int ,scalar_t__,int) ;
 int ExecutorStart (TYPE_6__*,int ) ;
 int ForwardScanDirection ;
 int FreeQueryDesc (TYPE_6__*) ;
 int InstrEndParallelQuery (int *) ;
 int InstrStartParallelQuery () ;
 int PARALLEL_KEY_BUFFER_USAGE ;
 int PARALLEL_KEY_DSA ;
 int PARALLEL_KEY_EXECUTOR_FIXED ;
 int PARALLEL_KEY_INSTRUMENTATION ;
 int PARALLEL_KEY_JIT_INSTRUMENTATION ;
 size_t ParallelWorkerNumber ;
 int RestoreParamExecParams (char*,TYPE_11__*) ;
 int STATE_RUNNING ;
 int debug_query_string ;
 int * dsa_attach_in_place (void*,int *) ;
 int dsa_detach (int *) ;
 char* dsa_get_address (int *,int ) ;
 int pgstat_report_activity (int ,int ) ;
 void* shm_toc_lookup (int *,int ,int) ;
 int stub1 (TYPE_9__*) ;

void
ParallelQueryMain(dsm_segment *seg, shm_toc *toc)
{
 FixedParallelExecutorState *fpes;
 BufferUsage *buffer_usage;
 DestReceiver *receiver;
 QueryDesc *queryDesc;
 SharedExecutorInstrumentation *instrumentation;
 SharedJitInstrumentation *jit_instrumentation;
 int instrument_options = 0;
 void *area_space;
 dsa_area *area;
 ParallelWorkerContext pwcxt;


 fpes = shm_toc_lookup(toc, PARALLEL_KEY_EXECUTOR_FIXED, 0);


 receiver = ExecParallelGetReceiver(seg, toc);
 instrumentation = shm_toc_lookup(toc, PARALLEL_KEY_INSTRUMENTATION, 1);
 if (instrumentation != ((void*)0))
  instrument_options = instrumentation->instrument_options;
 jit_instrumentation = shm_toc_lookup(toc, PARALLEL_KEY_JIT_INSTRUMENTATION,
           1);
 queryDesc = ExecParallelGetQueryDesc(toc, receiver, instrument_options);


 debug_query_string = queryDesc->sourceText;


 pgstat_report_activity(STATE_RUNNING, debug_query_string);


 area_space = shm_toc_lookup(toc, PARALLEL_KEY_DSA, 0);
 area = dsa_attach_in_place(area_space, seg);


 queryDesc->plannedstmt->jitFlags = fpes->jit_flags;
 ExecutorStart(queryDesc, fpes->eflags);


 queryDesc->planstate->state->es_query_dsa = area;
 if (DsaPointerIsValid(fpes->param_exec))
 {
  char *paramexec_space;

  paramexec_space = dsa_get_address(area, fpes->param_exec);
  RestoreParamExecParams(paramexec_space, queryDesc->estate);

 }
 pwcxt.toc = toc;
 pwcxt.seg = seg;
 ExecParallelInitializeWorker(queryDesc->planstate, &pwcxt);


 ExecSetTupleBound(fpes->tuples_needed, queryDesc->planstate);
 InstrStartParallelQuery();





 ExecutorRun(queryDesc,
    ForwardScanDirection,
    fpes->tuples_needed < 0 ? (int64) 0 : fpes->tuples_needed,
    1);


 ExecutorFinish(queryDesc);


 buffer_usage = shm_toc_lookup(toc, PARALLEL_KEY_BUFFER_USAGE, 0);
 InstrEndParallelQuery(&buffer_usage[ParallelWorkerNumber]);


 if (instrumentation != ((void*)0))
  ExecParallelReportInstrumentation(queryDesc->planstate,
            instrumentation);


 if (queryDesc->estate->es_jit && jit_instrumentation != ((void*)0))
 {
  Assert(ParallelWorkerNumber < jit_instrumentation->num_workers);
  jit_instrumentation->jit_instr[ParallelWorkerNumber] =
   queryDesc->estate->es_jit->instr;
 }


 ExecutorEnd(queryDesc);


 dsa_detach(area);
 FreeQueryDesc(queryDesc);
 receiver->rDestroy(receiver);
}
