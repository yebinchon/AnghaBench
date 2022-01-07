
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int tuple; } ;
struct TYPE_4__ {int buffer; TYPE_1__ base; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef TYPE_2__ BufferHeapTupleTableSlot ;


 int Assert (int ) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferIsValid (int ) ;
 int HeapTupleSatisfiesVisibility (int ,int ,int ) ;
 int LockBuffer (int ,int ) ;
 int TTS_IS_BUFFERTUPLE (int *) ;

__attribute__((used)) static bool
heapam_tuple_satisfies_snapshot(Relation rel, TupleTableSlot *slot,
        Snapshot snapshot)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;
 bool res;

 Assert(TTS_IS_BUFFERTUPLE(slot));
 Assert(BufferIsValid(bslot->buffer));





 LockBuffer(bslot->buffer, BUFFER_LOCK_SHARE);
 res = HeapTupleSatisfiesVisibility(bslot->base.tuple, snapshot,
            bslot->buffer);
 LockBuffer(bslot->buffer, BUFFER_LOCK_UNLOCK);

 return res;
}
