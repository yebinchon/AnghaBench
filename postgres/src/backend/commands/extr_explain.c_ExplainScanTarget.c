
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scanrelid; } ;
typedef TYPE_1__ Scan ;
typedef int Plan ;
typedef int ExplainState ;


 int ExplainTargetRel (int *,int ,int *) ;

__attribute__((used)) static void
ExplainScanTarget(Scan *plan, ExplainState *es)
{
 ExplainTargetRel((Plan *) plan, plan->scanrelid, es);
}
