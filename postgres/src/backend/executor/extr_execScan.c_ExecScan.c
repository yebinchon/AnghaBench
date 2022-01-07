
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_16__ {int * ecxt_scantuple; } ;
struct TYPE_12__ {int resultslot; } ;
struct TYPE_15__ {TYPE_1__ pi_state; } ;
struct TYPE_13__ {TYPE_5__* ps_ExprContext; TYPE_4__* ps_ProjInfo; int * qual; } ;
struct TYPE_14__ {TYPE_2__ ps; } ;
typedef TYPE_3__ ScanState ;
typedef TYPE_4__ ProjectionInfo ;
typedef int ExprState ;
typedef TYPE_5__ ExprContext ;
typedef int ExecScanRecheckMtd ;
typedef int ExecScanAccessMtd ;


 int * ExecClearTuple (int ) ;
 int * ExecProject (TYPE_4__*) ;
 scalar_t__ ExecQual (int *,TYPE_5__*) ;
 int * ExecScanFetch (TYPE_3__*,int ,int ) ;
 int InstrCountFiltered1 (TYPE_3__*,int) ;
 int ResetExprContext (TYPE_5__*) ;
 scalar_t__ TupIsNull (int *) ;

TupleTableSlot *
ExecScan(ScanState *node,
   ExecScanAccessMtd accessMtd,
   ExecScanRecheckMtd recheckMtd)
{
 ExprContext *econtext;
 ExprState *qual;
 ProjectionInfo *projInfo;




 qual = node->ps.qual;
 projInfo = node->ps.ps_ProjInfo;
 econtext = node->ps.ps_ExprContext;







 if (!qual && !projInfo)
 {
  ResetExprContext(econtext);
  return ExecScanFetch(node, accessMtd, recheckMtd);
 }





 ResetExprContext(econtext);





 for (;;)
 {
  TupleTableSlot *slot;

  slot = ExecScanFetch(node, accessMtd, recheckMtd);







  if (TupIsNull(slot))
  {
   if (projInfo)
    return ExecClearTuple(projInfo->pi_state.resultslot);
   else
    return slot;
  }




  econtext->ecxt_scantuple = slot;
  if (qual == ((void*)0) || ExecQual(qual, econtext))
  {



   if (projInfo)
   {




    return ExecProject(projInfo);
   }
   else
   {



    return slot;
   }
  }
  else
   InstrCountFiltered1(node, 1);




  ResetExprContext(econtext);
 }
}
