
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int pcxt; int nnodes; } ;
struct TYPE_12__ {TYPE_1__* plan; } ;
struct TYPE_11__ {int parallel_aware; } ;
typedef int SortState ;
typedef int SeqScanState ;
typedef TYPE_2__ PlanState ;
typedef int IndexScanState ;
typedef int IndexOnlyScanState ;
typedef int HashState ;
typedef int HashJoinState ;
typedef int ForeignScanState ;
typedef TYPE_3__ ExecParallelEstimateContext ;
typedef int CustomScanState ;
typedef int BitmapHeapScanState ;
typedef int AppendState ;


 int ExecAppendEstimate (int *,int ) ;
 int ExecBitmapHeapEstimate (int *,int ) ;
 int ExecCustomScanEstimate (int *,int ) ;
 int ExecForeignScanEstimate (int *,int ) ;
 int ExecHashEstimate (int *,int ) ;
 int ExecHashJoinEstimate (int *,int ) ;
 int ExecIndexOnlyScanEstimate (int *,int ) ;
 int ExecIndexScanEstimate (int *,int ) ;
 int ExecSeqScanEstimate (int *,int ) ;
 int ExecSortEstimate (int *,int ) ;
 int nodeTag (TYPE_2__*) ;
 int planstate_tree_walker (TYPE_2__*,int (*) (TYPE_2__*,TYPE_3__*),TYPE_3__*) ;

__attribute__((used)) static bool
ExecParallelEstimate(PlanState *planstate, ExecParallelEstimateContext *e)
{
 if (planstate == ((void*)0))
  return 0;


 e->nnodes++;

 switch (nodeTag(planstate))
 {
  case 129:
   if (planstate->plan->parallel_aware)
    ExecSeqScanEstimate((SeqScanState *) planstate,
         e->pcxt);
   break;
  case 130:
   if (planstate->plan->parallel_aware)
    ExecIndexScanEstimate((IndexScanState *) planstate,
           e->pcxt);
   break;
  case 131:
   if (planstate->plan->parallel_aware)
    ExecIndexOnlyScanEstimate((IndexOnlyScanState *) planstate,
            e->pcxt);
   break;
  case 134:
   if (planstate->plan->parallel_aware)
    ExecForeignScanEstimate((ForeignScanState *) planstate,
          e->pcxt);
   break;
  case 137:
   if (planstate->plan->parallel_aware)
    ExecAppendEstimate((AppendState *) planstate,
           e->pcxt);
   break;
  case 135:
   if (planstate->plan->parallel_aware)
    ExecCustomScanEstimate((CustomScanState *) planstate,
            e->pcxt);
   break;
  case 136:
   if (planstate->plan->parallel_aware)
    ExecBitmapHeapEstimate((BitmapHeapScanState *) planstate,
            e->pcxt);
   break;
  case 133:
   if (planstate->plan->parallel_aware)
    ExecHashJoinEstimate((HashJoinState *) planstate,
          e->pcxt);
   break;
  case 132:

   ExecHashEstimate((HashState *) planstate, e->pcxt);
   break;
  case 128:

   ExecSortEstimate((SortState *) planstate, e->pcxt);
   break;

  default:
   break;
 }

 return planstate_tree_walker(planstate, ExecParallelEstimate, e);
}
