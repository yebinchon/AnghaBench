
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int onConflictAction; } ;
struct TYPE_5__ {int state; scalar_t__ plan; } ;
struct TYPE_6__ {int operation; TYPE_1__ ps; int * rootResultRelInfo; int * resultRelInfo; } ;
typedef int ResultRelInfo ;
typedef TYPE_2__ ModifyTableState ;
typedef TYPE_3__ ModifyTable ;





 int ERROR ;
 int ExecBSDeleteTriggers (int ,int *) ;
 int ExecBSInsertTriggers (int ,int *) ;
 int ExecBSUpdateTriggers (int ,int *) ;
 int ONCONFLICT_UPDATE ;
 int elog (int ,char*) ;

__attribute__((used)) static void
fireBSTriggers(ModifyTableState *node)
{
 ModifyTable *plan = (ModifyTable *) node->ps.plan;
 ResultRelInfo *resultRelInfo = node->resultRelInfo;






 if (node->rootResultRelInfo != ((void*)0))
  resultRelInfo = node->rootResultRelInfo;

 switch (node->operation)
 {
  case 129:
   ExecBSInsertTriggers(node->ps.state, resultRelInfo);
   if (plan->onConflictAction == ONCONFLICT_UPDATE)
    ExecBSUpdateTriggers(node->ps.state,
          resultRelInfo);
   break;
  case 128:
   ExecBSUpdateTriggers(node->ps.state, resultRelInfo);
   break;
  case 130:
   ExecBSDeleteTriggers(node->ps.state, resultRelInfo);
   break;
  default:
   elog(ERROR, "unknown operation");
   break;
 }
}
