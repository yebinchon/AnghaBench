
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tmpcontext; TYPE_1__* phase; } ;
struct TYPE_4__ {int evaltrans; } ;
typedef TYPE_2__ AggState ;


 int ExecEvalExprSwitchContext (int ,int ,int*) ;

__attribute__((used)) static void
advance_aggregates(AggState *aggstate)
{
 bool dummynull;

 ExecEvalExprSwitchContext(aggstate->phase->evaltrans,
         aggstate->tmpcontext,
         &dummynull);
}
