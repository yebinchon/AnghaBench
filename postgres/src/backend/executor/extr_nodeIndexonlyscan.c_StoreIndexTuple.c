
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int tts_isnull; int tts_values; TYPE_1__* tts_tupleDescriptor; } ;
typedef TYPE_2__ TupleTableSlot ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_11__ {scalar_t__ natts; } ;
struct TYPE_9__ {scalar_t__ natts; } ;
typedef int IndexTuple ;


 int Assert (int) ;
 int ExecClearTuple (TYPE_2__*) ;
 int ExecStoreVirtualTuple (TYPE_2__*) ;
 int index_deform_tuple (int ,TYPE_3__*,int ,int ) ;

__attribute__((used)) static void
StoreIndexTuple(TupleTableSlot *slot, IndexTuple itup, TupleDesc itupdesc)
{







 Assert(slot->tts_tupleDescriptor->natts == itupdesc->natts);

 ExecClearTuple(slot);
 index_deform_tuple(itup, itupdesc, slot->tts_values, slot->tts_isnull);
 ExecStoreVirtualTuple(slot);
}
