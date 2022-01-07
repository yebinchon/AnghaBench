
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ running; } ;
struct TYPE_8__ {TYPE_5__* instrument; } ;
typedef TYPE_1__ PlanState ;
typedef int HashState ;
typedef int HashJoinState ;
typedef int GatherState ;
typedef int GatherMergeState ;
typedef int ForeignScanState ;
typedef int CustomScanState ;


 int ExecShutdownCustomScan (int *) ;
 int ExecShutdownForeignScan (int *) ;
 int ExecShutdownGather (int *) ;
 int ExecShutdownGatherMerge (int *) ;
 int ExecShutdownHash (int *) ;
 int ExecShutdownHashJoin (int *) ;
 int InstrStartNode (TYPE_5__*) ;
 int InstrStopNode (TYPE_5__*,int ) ;






 int check_stack_depth () ;
 int nodeTag (TYPE_1__*) ;
 int planstate_tree_walker (TYPE_1__*,int (*) (TYPE_1__*),int *) ;

bool
ExecShutdownNode(PlanState *node)
{
 if (node == ((void*)0))
  return 0;

 check_stack_depth();

 planstate_tree_walker(node, ExecShutdownNode, ((void*)0));
 if (node->instrument && node->instrument->running)
  InstrStartNode(node->instrument);

 switch (nodeTag(node))
 {
  case 130:
   ExecShutdownGather((GatherState *) node);
   break;
  case 132:
   ExecShutdownForeignScan((ForeignScanState *) node);
   break;
  case 133:
   ExecShutdownCustomScan((CustomScanState *) node);
   break;
  case 131:
   ExecShutdownGatherMerge((GatherMergeState *) node);
   break;
  case 128:
   ExecShutdownHash((HashState *) node);
   break;
  case 129:
   ExecShutdownHashJoin((HashJoinState *) node);
   break;
  default:
   break;
 }


 if (node->instrument && node->instrument->running)
  InstrStopNode(node->instrument, 0);

 return 0;
}
