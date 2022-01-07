
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int Relation ;
typedef int Index ;
typedef int EPQState ;


 int Assert (int) ;
 int EvalPlanQualBegin (int *) ;
 int * EvalPlanQualNext (int *) ;
 int * EvalPlanQualSlot (int *,int ,int ) ;
 int ExecClearTuple (int *) ;
 int ExecCopySlot (int *,int *) ;
 int ExecMaterializeSlot (int *) ;
 int TupIsNull (int *) ;

TupleTableSlot *
EvalPlanQual(EPQState *epqstate, Relation relation,
    Index rti, TupleTableSlot *inputslot)
{
 TupleTableSlot *slot;
 TupleTableSlot *testslot;

 Assert(rti > 0);




 EvalPlanQualBegin(epqstate);





 testslot = EvalPlanQualSlot(epqstate, relation, rti);
 if (testslot != inputslot)
  ExecCopySlot(testslot, inputslot);




 slot = EvalPlanQualNext(epqstate);
 if (!TupIsNull(slot))
  ExecMaterializeSlot(slot);






 ExecClearTuple(testslot);

 return slot;
}
