
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * chgParam; } ;
struct TYPE_5__ {TYPE_4__* lefttree; } ;
struct TYPE_6__ {int rs_done; int rs_checkqual; TYPE_1__ ps; int * resconstantqual; } ;
typedef TYPE_2__ ResultState ;


 int ExecReScan (TYPE_4__*) ;

void
ExecReScanResult(ResultState *node)
{
 node->rs_done = 0;
 node->rs_checkqual = (node->resconstantqual == ((void*)0)) ? 0 : 1;





 if (node->ps.lefttree &&
  node->ps.lefttree->chgParam == ((void*)0))
  ExecReScan(node->ps.lefttree);
}
