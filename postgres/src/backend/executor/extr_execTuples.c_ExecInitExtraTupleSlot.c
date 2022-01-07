
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlotOps ;
typedef int TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_3__ {int es_tupleTable; } ;
typedef TYPE_1__ EState ;


 int * ExecAllocTableSlot (int *,int ,int const*) ;

TupleTableSlot *
ExecInitExtraTupleSlot(EState *estate,
        TupleDesc tupledesc,
        const TupleTableSlotOps *tts_ops)
{
 return ExecAllocTableSlot(&estate->es_tupleTable, tupledesc, tts_ops);
}
