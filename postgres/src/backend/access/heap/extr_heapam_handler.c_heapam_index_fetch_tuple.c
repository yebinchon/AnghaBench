
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct IndexFetchTableData {int rel; } ;
struct TYPE_13__ {int tts_tableOid; } ;
typedef TYPE_3__ TupleTableSlot ;
struct TYPE_16__ {int t_self; } ;
struct TYPE_12__ {TYPE_7__ tupdata; } ;
struct TYPE_15__ {TYPE_2__ base; } ;
struct TYPE_11__ {int rel; } ;
struct TYPE_14__ {scalar_t__ xs_cbuf; TYPE_1__ xs_base; } ;
typedef int Snapshot ;
typedef int * ItemPointer ;
typedef TYPE_4__ IndexFetchHeapData ;
typedef TYPE_5__ BufferHeapTupleTableSlot ;
typedef scalar_t__ Buffer ;


 int Assert (int ) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int ExecStoreBufferHeapTuple (TYPE_7__*,TYPE_3__*,scalar_t__) ;
 int IsMVCCSnapshot (int ) ;
 int ItemPointerGetBlockNumber (int *) ;
 int LockBuffer (scalar_t__,int ) ;
 int RelationGetRelid (int ) ;
 scalar_t__ ReleaseAndReadBuffer (scalar_t__,int ,int ) ;
 int TTS_IS_BUFFERTUPLE (TYPE_3__*) ;
 int heap_hot_search_buffer (int *,int ,scalar_t__,int ,TYPE_7__*,int*,int) ;
 int heap_page_prune_opt (int ,scalar_t__) ;

__attribute__((used)) static bool
heapam_index_fetch_tuple(struct IndexFetchTableData *scan,
       ItemPointer tid,
       Snapshot snapshot,
       TupleTableSlot *slot,
       bool *call_again, bool *all_dead)
{
 IndexFetchHeapData *hscan = (IndexFetchHeapData *) scan;
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;
 bool got_heap_tuple;

 Assert(TTS_IS_BUFFERTUPLE(slot));


 if (!*call_again)
 {

  Buffer prev_buf = hscan->xs_cbuf;

  hscan->xs_cbuf = ReleaseAndReadBuffer(hscan->xs_cbuf,
             hscan->xs_base.rel,
             ItemPointerGetBlockNumber(tid));




  if (prev_buf != hscan->xs_cbuf)
   heap_page_prune_opt(hscan->xs_base.rel, hscan->xs_cbuf);
 }


 LockBuffer(hscan->xs_cbuf, BUFFER_LOCK_SHARE);
 got_heap_tuple = heap_hot_search_buffer(tid,
           hscan->xs_base.rel,
           hscan->xs_cbuf,
           snapshot,
           &bslot->base.tupdata,
           all_dead,
           !*call_again);
 bslot->base.tupdata.t_self = *tid;
 LockBuffer(hscan->xs_cbuf, BUFFER_LOCK_UNLOCK);

 if (got_heap_tuple)
 {




  *call_again = !IsMVCCSnapshot(snapshot);

  slot->tts_tableOid = RelationGetRelid(scan->rel);
  ExecStoreBufferHeapTuple(&bslot->base.tupdata, slot, hscan->xs_cbuf);
 }
 else
 {

  *call_again = 0;
 }

 return got_heap_tuple;
}
