
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlotOps ;
typedef int TupleDesc ;
typedef int ScanState ;
typedef int PlanState ;
typedef int EState ;


 int ExecGetResultType (int *) ;
 int ExecInitScanTupleSlot (int *,int *,int ,int const*) ;
 int * outerPlanState (int *) ;

void
ExecCreateScanSlotFromOuterPlan(EState *estate,
        ScanState *scanstate,
        const TupleTableSlotOps *tts_ops)
{
 PlanState *outerPlan;
 TupleDesc tupDesc;

 outerPlan = outerPlanState(scanstate);
 tupDesc = ExecGetResultType(outerPlan);

 ExecInitScanTupleSlot(estate, scanstate, tupDesc, tts_ops);
}
