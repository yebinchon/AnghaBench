
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* plan; } ;
struct TYPE_7__ {int parallel_aware; } ;
typedef int SeqScanState ;
typedef TYPE_2__ PlanState ;
typedef int ParallelContext ;
typedef int IndexScanState ;
typedef int IndexOnlyScanState ;
typedef int HashJoinState ;
typedef int ForeignScanState ;
typedef int CustomScanState ;
typedef int BitmapHeapScanState ;
typedef int AppendState ;


 int ExecAppendReInitializeDSM (int *,int *) ;
 int ExecBitmapHeapReInitializeDSM (int *,int *) ;
 int ExecCustomScanReInitializeDSM (int *,int *) ;
 int ExecForeignScanReInitializeDSM (int *,int *) ;
 int ExecHashJoinReInitializeDSM (int *,int *) ;
 int ExecIndexOnlyScanReInitializeDSM (int *,int *) ;
 int ExecIndexScanReInitializeDSM (int *,int *) ;
 int ExecSeqScanReInitializeDSM (int *,int *) ;
 int nodeTag (TYPE_2__*) ;
 int planstate_tree_walker (TYPE_2__*,int (*) (TYPE_2__*,int *),int *) ;

__attribute__((used)) static bool
ExecParallelReInitializeDSM(PlanState *planstate,
       ParallelContext *pcxt)
{
 if (planstate == ((void*)0))
  return 0;




 switch (nodeTag(planstate))
 {
  case 129:
   if (planstate->plan->parallel_aware)
    ExecSeqScanReInitializeDSM((SeqScanState *) planstate,
             pcxt);
   break;
  case 130:
   if (planstate->plan->parallel_aware)
    ExecIndexScanReInitializeDSM((IndexScanState *) planstate,
            pcxt);
   break;
  case 131:
   if (planstate->plan->parallel_aware)
    ExecIndexOnlyScanReInitializeDSM((IndexOnlyScanState *) planstate,
             pcxt);
   break;
  case 134:
   if (planstate->plan->parallel_aware)
    ExecForeignScanReInitializeDSM((ForeignScanState *) planstate,
              pcxt);
   break;
  case 137:
   if (planstate->plan->parallel_aware)
    ExecAppendReInitializeDSM((AppendState *) planstate, pcxt);
   break;
  case 135:
   if (planstate->plan->parallel_aware)
    ExecCustomScanReInitializeDSM((CustomScanState *) planstate,
             pcxt);
   break;
  case 136:
   if (planstate->plan->parallel_aware)
    ExecBitmapHeapReInitializeDSM((BitmapHeapScanState *) planstate,
             pcxt);
   break;
  case 133:
   if (planstate->plan->parallel_aware)
    ExecHashJoinReInitializeDSM((HashJoinState *) planstate,
           pcxt);
   break;
  case 132:
  case 128:

   break;

  default:
   break;
 }

 return planstate_tree_walker(planstate, ExecParallelReInitializeDSM, pcxt);
}
