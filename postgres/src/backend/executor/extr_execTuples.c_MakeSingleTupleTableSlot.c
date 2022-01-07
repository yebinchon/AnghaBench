
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlotOps ;
typedef int TupleTableSlot ;
typedef int TupleDesc ;


 int * MakeTupleTableSlot (int ,int const*) ;

TupleTableSlot *
MakeSingleTupleTableSlot(TupleDesc tupdesc,
       const TupleTableSlotOps *tts_ops)
{
 TupleTableSlot *slot = MakeTupleTableSlot(tupdesc, tts_ops);

 return slot;
}
