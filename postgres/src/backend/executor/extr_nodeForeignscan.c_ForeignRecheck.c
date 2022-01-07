
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_14__ {int * ecxt_scantuple; } ;
struct TYPE_13__ {int (* RecheckForeignScan ) (TYPE_3__*,int *) ;} ;
struct TYPE_10__ {TYPE_5__* ps_ExprContext; } ;
struct TYPE_11__ {TYPE_1__ ps; } ;
struct TYPE_12__ {int fdw_recheck_quals; TYPE_2__ ss; TYPE_4__* fdwroutine; } ;
typedef TYPE_3__ ForeignScanState ;
typedef TYPE_4__ FdwRoutine ;
typedef TYPE_5__ ExprContext ;


 int ExecQual (int ,TYPE_5__*) ;
 int ResetExprContext (TYPE_5__*) ;
 int stub1 (TYPE_3__*,int *) ;

__attribute__((used)) static bool
ForeignRecheck(ForeignScanState *node, TupleTableSlot *slot)
{
 FdwRoutine *fdwroutine = node->fdwroutine;
 ExprContext *econtext;




 econtext = node->ss.ps.ps_ExprContext;


 econtext->ecxt_scantuple = slot;

 ResetExprContext(econtext);
 if (fdwroutine->RecheckForeignScan &&
  !fdwroutine->RecheckForeignScan(node, slot))
  return 0;

 return ExecQual(node->fdw_recheck_quals, econtext);
}
