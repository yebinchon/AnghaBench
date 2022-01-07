
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ms_nplans; int ** mergeplans; } ;
typedef int PlanState ;
typedef TYPE_1__ MergeAppendState ;


 int ExecEndNode (int *) ;

void
ExecEndMergeAppend(MergeAppendState *node)
{
 PlanState **mergeplans;
 int nplans;
 int i;




 mergeplans = node->mergeplans;
 nplans = node->ms_nplans;




 for (i = 0; i < nplans; i++)
  ExecEndNode(mergeplans[i]);
}
