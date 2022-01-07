
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int as_nplans; int ** appendplans; } ;
typedef int PlanState ;
typedef TYPE_1__ AppendState ;


 int ExecEndNode (int *) ;

void
ExecEndAppend(AppendState *node)
{
 PlanState **appendplans;
 int nplans;
 int i;




 appendplans = node->appendplans;
 nplans = node->as_nplans;




 for (i = 0; i < nplans; i++)
  ExecEndNode(appendplans[i]);
}
