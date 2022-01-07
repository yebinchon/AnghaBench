
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cstate; } ;
struct TYPE_4__ {scalar_t__ fdw_state; } ;
typedef TYPE_1__ ForeignScanState ;
typedef TYPE_2__ FileFdwExecutionState ;


 int EndCopyFrom (int ) ;

__attribute__((used)) static void
fileEndForeignScan(ForeignScanState *node)
{
 FileFdwExecutionState *festate = (FileFdwExecutionState *) node->fdw_state;


 if (festate)
  EndCopyFrom(festate->cstate);
}
