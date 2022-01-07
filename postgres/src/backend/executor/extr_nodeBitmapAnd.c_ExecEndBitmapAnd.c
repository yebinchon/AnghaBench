
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nplans; int ** bitmapplans; } ;
typedef int PlanState ;
typedef TYPE_1__ BitmapAndState ;


 int ExecEndNode (int *) ;

void
ExecEndBitmapAnd(BitmapAndState *node)
{
 PlanState **bitmapplans;
 int nplans;
 int i;




 bitmapplans = node->bitmapplans;
 nplans = node->nplans;




 for (i = 0; i < nplans; i++)
 {
  if (bitmapplans[i])
   ExecEndNode(bitmapplans[i]);
 }
}
