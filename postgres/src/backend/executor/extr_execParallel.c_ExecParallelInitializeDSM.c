
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {size_t nnodes; int pcxt; TYPE_1__* instrumentation; } ;
struct TYPE_14__ {TYPE_2__* plan; } ;
struct TYPE_13__ {int parallel_aware; int plan_node_id; } ;
struct TYPE_12__ {int * plan_node_id; } ;
typedef int SortState ;
typedef int SeqScanState ;
typedef TYPE_3__ PlanState ;
typedef int IndexScanState ;
typedef int IndexOnlyScanState ;
typedef int HashState ;
typedef int HashJoinState ;
typedef int ForeignScanState ;
typedef TYPE_4__ ExecParallelInitializeDSMContext ;
typedef int CustomScanState ;
typedef int BitmapHeapScanState ;
typedef int AppendState ;


 int ExecAppendInitializeDSM (int *,int ) ;
 int ExecBitmapHeapInitializeDSM (int *,int ) ;
 int ExecCustomScanInitializeDSM (int *,int ) ;
 int ExecForeignScanInitializeDSM (int *,int ) ;
 int ExecHashInitializeDSM (int *,int ) ;
 int ExecHashJoinInitializeDSM (int *,int ) ;
 int ExecIndexOnlyScanInitializeDSM (int *,int ) ;
 int ExecIndexScanInitializeDSM (int *,int ) ;
 int ExecSeqScanInitializeDSM (int *,int ) ;
 int ExecSortInitializeDSM (int *,int ) ;
 int nodeTag (TYPE_3__*) ;
 int planstate_tree_walker (TYPE_3__*,int (*) (TYPE_3__*,TYPE_4__*),TYPE_4__*) ;

__attribute__((used)) static bool
ExecParallelInitializeDSM(PlanState *planstate,
        ExecParallelInitializeDSMContext *d)
{
 if (planstate == ((void*)0))
  return 0;


 if (d->instrumentation != ((void*)0))
  d->instrumentation->plan_node_id[d->nnodes] =
   planstate->plan->plan_node_id;


 d->nnodes++;
 switch (nodeTag(planstate))
 {
  case 129:
   if (planstate->plan->parallel_aware)
    ExecSeqScanInitializeDSM((SeqScanState *) planstate,
           d->pcxt);
   break;
  case 130:
   if (planstate->plan->parallel_aware)
    ExecIndexScanInitializeDSM((IndexScanState *) planstate,
             d->pcxt);
   break;
  case 131:
   if (planstate->plan->parallel_aware)
    ExecIndexOnlyScanInitializeDSM((IndexOnlyScanState *) planstate,
              d->pcxt);
   break;
  case 134:
   if (planstate->plan->parallel_aware)
    ExecForeignScanInitializeDSM((ForeignScanState *) planstate,
            d->pcxt);
   break;
  case 137:
   if (planstate->plan->parallel_aware)
    ExecAppendInitializeDSM((AppendState *) planstate,
          d->pcxt);
   break;
  case 135:
   if (planstate->plan->parallel_aware)
    ExecCustomScanInitializeDSM((CustomScanState *) planstate,
           d->pcxt);
   break;
  case 136:
   if (planstate->plan->parallel_aware)
    ExecBitmapHeapInitializeDSM((BitmapHeapScanState *) planstate,
           d->pcxt);
   break;
  case 133:
   if (planstate->plan->parallel_aware)
    ExecHashJoinInitializeDSM((HashJoinState *) planstate,
            d->pcxt);
   break;
  case 132:

   ExecHashInitializeDSM((HashState *) planstate, d->pcxt);
   break;
  case 128:

   ExecSortInitializeDSM((SortState *) planstate, d->pcxt);
   break;

  default:
   break;
 }

 return planstate_tree_walker(planstate, ExecParallelInitializeDSM, d);
}
