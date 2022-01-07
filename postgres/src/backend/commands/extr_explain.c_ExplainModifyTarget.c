
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nominalRelation; } ;
typedef int Plan ;
typedef TYPE_1__ ModifyTable ;
typedef int ExplainState ;


 int ExplainTargetRel (int *,int ,int *) ;

__attribute__((used)) static void
ExplainModifyTarget(ModifyTable *plan, ExplainState *es)
{
 ExplainTargetRel((Plan *) plan, plan->nominalRelation, es);
}
