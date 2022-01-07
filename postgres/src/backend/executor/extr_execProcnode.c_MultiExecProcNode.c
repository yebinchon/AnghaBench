
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * chgParam; } ;
typedef TYPE_1__ PlanState ;
typedef int Node ;
typedef int HashState ;
typedef int BitmapOrState ;
typedef int BitmapIndexScanState ;
typedef int BitmapAndState ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int ExecReScan (TYPE_1__*) ;
 int * MultiExecBitmapAnd (int *) ;
 int * MultiExecBitmapIndexScan (int *) ;
 int * MultiExecBitmapOr (int *) ;
 int * MultiExecHash (int *) ;




 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int nodeTag (TYPE_1__*) ;

Node *
MultiExecProcNode(PlanState *node)
{
 Node *result;

 check_stack_depth();

 CHECK_FOR_INTERRUPTS();

 if (node->chgParam != ((void*)0))
  ExecReScan(node);

 switch (nodeTag(node))
 {




  case 128:
   result = MultiExecHash((HashState *) node);
   break;

  case 130:
   result = MultiExecBitmapIndexScan((BitmapIndexScanState *) node);
   break;

  case 131:
   result = MultiExecBitmapAnd((BitmapAndState *) node);
   break;

  case 129:
   result = MultiExecBitmapOr((BitmapOrState *) node);
   break;

  default:
   elog(ERROR, "unrecognized node type: %d", (int) nodeTag(node));
   result = ((void*)0);
   break;
 }

 return result;
}
