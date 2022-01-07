
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * chgParam; } ;
struct TYPE_9__ {int nplans; TYPE_1__ ps; TYPE_2__** bitmapplans; } ;
struct TYPE_8__ {int * chgParam; } ;
typedef TYPE_2__ PlanState ;
typedef TYPE_3__ BitmapOrState ;


 int ExecReScan (TYPE_2__*) ;
 int UpdateChangedParamSet (TYPE_2__*,int *) ;

void
ExecReScanBitmapOr(BitmapOrState *node)
{
 int i;

 for (i = 0; i < node->nplans; i++)
 {
  PlanState *subnode = node->bitmapplans[i];





  if (node->ps.chgParam != ((void*)0))
   UpdateChangedParamSet(subnode, node->ps.chgParam);





  if (subnode->chgParam == ((void*)0))
   ExecReScan(subnode);
 }
}
