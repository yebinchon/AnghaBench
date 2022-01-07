
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * chgParam; } ;
struct TYPE_6__ {TYPE_5__* lefttree; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
typedef TYPE_2__ LimitState ;


 int ExecReScan (TYPE_5__*) ;
 int recompute_limits (TYPE_2__*) ;

void
ExecReScanLimit(LimitState *node)
{





 recompute_limits(node);





 if (node->ps.lefttree->chgParam == ((void*)0))
  ExecReScan(node->ps.lefttree);
}
