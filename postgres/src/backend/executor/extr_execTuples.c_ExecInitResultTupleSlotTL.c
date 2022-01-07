
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlotOps ;
typedef int PlanState ;


 int ExecInitResultSlot (int *,int const*) ;
 int ExecInitResultTypeTL (int *) ;

void
ExecInitResultTupleSlotTL(PlanState *planstate,
        const TupleTableSlotOps *tts_ops)
{
 ExecInitResultTypeTL(planstate);
 ExecInitResultSlot(planstate, tts_ops);
}
