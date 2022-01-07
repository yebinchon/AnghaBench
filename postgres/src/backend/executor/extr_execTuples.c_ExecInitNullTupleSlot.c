
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlotOps ;
typedef int TupleTableSlot ;
typedef int TupleDesc ;
typedef int EState ;


 int * ExecInitExtraTupleSlot (int *,int ,int const*) ;
 int * ExecStoreAllNullTuple (int *) ;

TupleTableSlot *
ExecInitNullTupleSlot(EState *estate, TupleDesc tupType,
       const TupleTableSlotOps *tts_ops)
{
 TupleTableSlot *slot = ExecInitExtraTupleSlot(estate, tupType, tts_ops);

 return ExecStoreAllNullTuple(slot);
}
