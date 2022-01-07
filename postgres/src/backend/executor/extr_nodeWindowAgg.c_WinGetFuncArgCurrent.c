
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* WindowObject ;
struct TYPE_9__ {TYPE_5__* ps_ExprContext; } ;
struct TYPE_10__ {int ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_12__ {TYPE_2__ ss; } ;
typedef TYPE_4__ WindowAggState ;
struct TYPE_13__ {int ecxt_outertuple; } ;
struct TYPE_11__ {int argstates; TYPE_4__* winstate; } ;
typedef int ExprState ;
typedef TYPE_5__ ExprContext ;
typedef int Datum ;


 int Assert (int ) ;
 int ExecEvalExpr (int *,TYPE_5__*,int*) ;
 int WindowObjectIsValid (TYPE_3__*) ;
 scalar_t__ list_nth (int ,int) ;

Datum
WinGetFuncArgCurrent(WindowObject winobj, int argno, bool *isnull)
{
 WindowAggState *winstate;
 ExprContext *econtext;

 Assert(WindowObjectIsValid(winobj));
 winstate = winobj->winstate;

 econtext = winstate->ss.ps.ps_ExprContext;

 econtext->ecxt_outertuple = winstate->ss.ss_ScanTupleSlot;
 return ExecEvalExpr((ExprState *) list_nth(winobj->argstates, argno),
      econtext, isnull);
}
