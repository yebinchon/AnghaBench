
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_12__ {int ecxt_innertuple; int ecxt_outertuple; } ;
struct TYPE_9__ {int ps_ProjInfo; int * qual; TYPE_4__* ps_ExprContext; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ js; int mj_InnerTupleSlot; int mj_NullOuterTupleSlot; } ;
typedef TYPE_3__ MergeJoinState ;
typedef int ExprState ;
typedef TYPE_4__ ExprContext ;


 int * ExecProject (int ) ;
 scalar_t__ ExecQual (int *,TYPE_4__*) ;
 int InstrCountFiltered2 (TYPE_3__*,int) ;
 int MJ_printf (char*) ;
 int ResetExprContext (TYPE_4__*) ;

__attribute__((used)) static TupleTableSlot *
MJFillInner(MergeJoinState *node)
{
 ExprContext *econtext = node->js.ps.ps_ExprContext;
 ExprState *otherqual = node->js.ps.qual;

 ResetExprContext(econtext);

 econtext->ecxt_outertuple = node->mj_NullOuterTupleSlot;
 econtext->ecxt_innertuple = node->mj_InnerTupleSlot;

 if (ExecQual(otherqual, econtext))
 {




  MJ_printf("ExecMergeJoin: returning inner fill tuple\n");

  return ExecProject(node->js.ps.ps_ProjInfo);
 }
 else
  InstrCountFiltered2(node, 1);

 return ((void*)0);
}
