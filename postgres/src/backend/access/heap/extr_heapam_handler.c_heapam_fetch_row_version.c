
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int tts_tableOid; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_12__ {int t_self; } ;
struct TYPE_9__ {TYPE_5__ tupdata; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int * ItemPointer ;
typedef TYPE_3__ BufferHeapTupleTableSlot ;
typedef int Buffer ;


 int Assert (int ) ;
 int ExecStorePinnedBufferHeapTuple (TYPE_5__*,TYPE_2__*,int ) ;
 int RelationGetRelid (int ) ;
 int TTS_IS_BUFFERTUPLE (TYPE_2__*) ;
 scalar_t__ heap_fetch (int ,int ,TYPE_5__*,int *) ;

__attribute__((used)) static bool
heapam_fetch_row_version(Relation relation,
       ItemPointer tid,
       Snapshot snapshot,
       TupleTableSlot *slot)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;
 Buffer buffer;

 Assert(TTS_IS_BUFFERTUPLE(slot));

 bslot->base.tupdata.t_self = *tid;
 if (heap_fetch(relation, snapshot, &bslot->base.tupdata, &buffer))
 {

  ExecStorePinnedBufferHeapTuple(&bslot->base.tupdata, slot, buffer);
  slot->tts_tableOid = RelationGetRelid(relation);

  return 1;
 }

 return 0;
}
