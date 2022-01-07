
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int options; int is_program; int filename; int cstate; } ;
struct TYPE_5__ {int ss_currentRelation; } ;
struct TYPE_6__ {TYPE_1__ ss; scalar_t__ fdw_state; } ;
typedef TYPE_2__ ForeignScanState ;
typedef TYPE_3__ FileFdwExecutionState ;


 int BeginCopyFrom (int *,int ,int ,int ,int *,int ,int ) ;
 int EndCopyFrom (int ) ;
 int NIL ;

__attribute__((used)) static void
fileReScanForeignScan(ForeignScanState *node)
{
 FileFdwExecutionState *festate = (FileFdwExecutionState *) node->fdw_state;

 EndCopyFrom(festate->cstate);

 festate->cstate = BeginCopyFrom(((void*)0),
         node->ss.ss_currentRelation,
         festate->filename,
         festate->is_program,
         ((void*)0),
         NIL,
         festate->options);
}
