
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int tts_isnull; int tts_values; int tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_12__ {TYPE_2__* t_data; int t_self; int t_len; int member_0; } ;
struct TYPE_11__ {int t_ctid; } ;
typedef TYPE_2__* HeapTupleHeader ;
typedef TYPE_3__ HeapTupleData ;
typedef int Datum ;


 TYPE_2__* DatumGetHeapTupleHeader (int ) ;
 int ExecClearTuple (TYPE_1__*) ;
 int ExecStoreVirtualTuple (TYPE_1__*) ;
 int HeapTupleHeaderGetDatumLength (TYPE_2__*) ;
 int heap_deform_tuple (TYPE_3__*,int ,int ,int ) ;

void
ExecStoreHeapTupleDatum(Datum data, TupleTableSlot *slot)
{
 HeapTupleData tuple = {0};
 HeapTupleHeader td;

 td = DatumGetHeapTupleHeader(data);

 tuple.t_len = HeapTupleHeaderGetDatumLength(td);
 tuple.t_self = td->t_ctid;
 tuple.t_data = td;

 ExecClearTuple(slot);

 heap_deform_tuple(&tuple, slot->tts_tupleDescriptor,
       slot->tts_values, slot->tts_isnull);
 ExecStoreVirtualTuple(slot);
}
