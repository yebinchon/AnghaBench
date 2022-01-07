
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * chgParam; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_9__ {int * chgParam; } ;
struct TYPE_8__ {TYPE_3__* subplan; TYPE_4__ ss; } ;
typedef TYPE_2__ SubqueryScanState ;


 int ExecReScan (TYPE_3__*) ;
 int ExecScanReScan (TYPE_4__*) ;
 int UpdateChangedParamSet (TYPE_3__*,int *) ;

void
ExecReScanSubqueryScan(SubqueryScanState *node)
{
 ExecScanReScan(&node->ss);






 if (node->ss.ps.chgParam != ((void*)0))
  UpdateChangedParamSet(node->subplan, node->ss.ps.chgParam);





 if (node->subplan->chgParam == ((void*)0))
  ExecReScan(node->subplan);
}
