
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* plan; } ;
struct TYPE_7__ {int parallel_aware; } ;
typedef int SortState ;
typedef int SeqScanState ;
typedef TYPE_2__ PlanState ;
typedef int ParallelWorkerContext ;
typedef int IndexScanState ;
typedef int IndexOnlyScanState ;
typedef int HashState ;
typedef int HashJoinState ;
typedef int ForeignScanState ;
typedef int CustomScanState ;
typedef int BitmapHeapScanState ;
typedef int AppendState ;


 int ExecAppendInitializeWorker (int *,int *) ;
 int ExecBitmapHeapInitializeWorker (int *,int *) ;
 int ExecCustomScanInitializeWorker (int *,int *) ;
 int ExecForeignScanInitializeWorker (int *,int *) ;
 int ExecHashInitializeWorker (int *,int *) ;
 int ExecHashJoinInitializeWorker (int *,int *) ;
 int ExecIndexOnlyScanInitializeWorker (int *,int *) ;
 int ExecIndexScanInitializeWorker (int *,int *) ;
 int ExecSeqScanInitializeWorker (int *,int *) ;
 int ExecSortInitializeWorker (int *,int *) ;
 int nodeTag (TYPE_2__*) ;
 int planstate_tree_walker (TYPE_2__*,int (*) (TYPE_2__*,int *),int *) ;

__attribute__((used)) static bool
ExecParallelInitializeWorker(PlanState *planstate, ParallelWorkerContext *pwcxt)
{
 if (planstate == ((void*)0))
  return 0;

 switch (nodeTag(planstate))
 {
  case 129:
   if (planstate->plan->parallel_aware)
    ExecSeqScanInitializeWorker((SeqScanState *) planstate, pwcxt);
   break;
  case 130:
   if (planstate->plan->parallel_aware)
    ExecIndexScanInitializeWorker((IndexScanState *) planstate,
             pwcxt);
   break;
  case 131:
   if (planstate->plan->parallel_aware)
    ExecIndexOnlyScanInitializeWorker((IndexOnlyScanState *) planstate,
              pwcxt);
   break;
  case 134:
   if (planstate->plan->parallel_aware)
    ExecForeignScanInitializeWorker((ForeignScanState *) planstate,
            pwcxt);
   break;
  case 137:
   if (planstate->plan->parallel_aware)
    ExecAppendInitializeWorker((AppendState *) planstate, pwcxt);
   break;
  case 135:
   if (planstate->plan->parallel_aware)
    ExecCustomScanInitializeWorker((CustomScanState *) planstate,
              pwcxt);
   break;
  case 136:
   if (planstate->plan->parallel_aware)
    ExecBitmapHeapInitializeWorker((BitmapHeapScanState *) planstate,
              pwcxt);
   break;
  case 133:
   if (planstate->plan->parallel_aware)
    ExecHashJoinInitializeWorker((HashJoinState *) planstate,
            pwcxt);
   break;
  case 132:

   ExecHashInitializeWorker((HashState *) planstate, pwcxt);
   break;
  case 128:

   ExecSortInitializeWorker((SortState *) planstate, pwcxt);
   break;

  default:
   break;
 }

 return planstate_tree_walker(planstate, ExecParallelInitializeWorker,
         pwcxt);
}
