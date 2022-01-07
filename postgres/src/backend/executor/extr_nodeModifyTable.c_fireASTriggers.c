
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int onConflictAction; } ;
struct TYPE_6__ {int state; scalar_t__ plan; } ;
struct TYPE_7__ {int operation; int mt_transition_capture; TYPE_1__ ps; int mt_oc_transition_capture; } ;
typedef int ResultRelInfo ;
typedef TYPE_2__ ModifyTableState ;
typedef TYPE_3__ ModifyTable ;





 int ERROR ;
 int ExecASDeleteTriggers (int ,int *,int ) ;
 int ExecASInsertTriggers (int ,int *,int ) ;
 int ExecASUpdateTriggers (int ,int *,int ) ;
 int ONCONFLICT_UPDATE ;
 int elog (int ,char*) ;
 int * getTargetResultRelInfo (TYPE_2__*) ;

__attribute__((used)) static void
fireASTriggers(ModifyTableState *node)
{
 ModifyTable *plan = (ModifyTable *) node->ps.plan;
 ResultRelInfo *resultRelInfo = getTargetResultRelInfo(node);

 switch (node->operation)
 {
  case 129:
   if (plan->onConflictAction == ONCONFLICT_UPDATE)
    ExecASUpdateTriggers(node->ps.state,
          resultRelInfo,
          node->mt_oc_transition_capture);
   ExecASInsertTriggers(node->ps.state, resultRelInfo,
         node->mt_transition_capture);
   break;
  case 128:
   ExecASUpdateTriggers(node->ps.state, resultRelInfo,
         node->mt_transition_capture);
   break;
  case 130:
   ExecASDeleteTriggers(node->ps.state, resultRelInfo,
         node->mt_transition_capture);
   break;
  default:
   elog(ERROR, "unknown operation");
   break;
 }
}
