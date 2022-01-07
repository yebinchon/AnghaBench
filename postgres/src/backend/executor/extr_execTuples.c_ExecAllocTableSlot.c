
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlotOps ;
typedef int TupleTableSlot ;
typedef int TupleDesc ;
typedef int List ;


 int * MakeTupleTableSlot (int ,int const*) ;
 int * lappend (int *,int *) ;

TupleTableSlot *
ExecAllocTableSlot(List **tupleTable, TupleDesc desc,
       const TupleTableSlotOps *tts_ops)
{
 TupleTableSlot *slot = MakeTupleTableSlot(desc, tts_ops);

 *tupleTable = lappend(*tupleTable, slot);

 return slot;
}
