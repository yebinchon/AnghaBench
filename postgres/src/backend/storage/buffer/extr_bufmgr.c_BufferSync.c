
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef int uint32 ;
typedef int float8 ;
typedef int binaryheap ;
typedef int WritebackContext ;
struct TYPE_19__ {scalar_t__ spcNode; int relNode; } ;
struct TYPE_20__ {int blockNum; int forkNum; TYPE_1__ rnode; } ;
struct TYPE_23__ {int state; TYPE_2__ tag; } ;
struct TYPE_22__ {int buf_id; scalar_t__ tsId; int blockNum; int forkNum; int relNode; } ;
struct TYPE_21__ {int index; int num_to_scan; int progress_slice; scalar_t__ num_scanned; int progress; scalar_t__ tsId; } ;
struct TYPE_18__ {int m_buf_written_checkpoints; } ;
struct TYPE_17__ {int ckpt_bufs_written; } ;
typedef int Size ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ CkptTsStatus ;
typedef TYPE_4__ CkptSortItem ;
typedef TYPE_5__ BufferDesc ;


 int Assert (int) ;
 int BM_CHECKPOINT_NEEDED ;
 int BM_DIRTY ;
 int BM_PERMANENT ;
 int BUF_WRITTEN ;
 TYPE_16__ BgWriterStats ;
 int CHECKPOINT_END_OF_RECOVERY ;
 int CHECKPOINT_FLUSH_ALL ;
 int CHECKPOINT_IS_SHUTDOWN ;
 TYPE_15__ CheckpointStats ;
 int CheckpointWriteDelay (int,double) ;
 TYPE_4__* CkptBufferIds ;
 int CurrentResourceOwner ;
 scalar_t__ DatumGetPointer (int ) ;
 TYPE_5__* GetBufferDescriptor (int) ;
 scalar_t__ InvalidOid ;
 int IssuePendingWritebacks (int *) ;
 int LockBufHdr (TYPE_5__*) ;
 int NBuffers ;
 int PointerGetDatum (TYPE_3__*) ;
 int ResourceOwnerEnlargeBuffers (int ) ;
 int SyncOneBuffer (int,int,int *) ;
 int TRACE_POSTGRESQL_BUFFER_SYNC_DONE (int,int,int) ;
 int TRACE_POSTGRESQL_BUFFER_SYNC_START (int,int) ;
 int TRACE_POSTGRESQL_BUFFER_SYNC_WRITTEN (int) ;
 int UnlockBufHdr (TYPE_5__*,int) ;
 int WritebackContextInit (int *,int *) ;
 int binaryheap_add_unordered (int *,int ) ;
 int * binaryheap_allocate (int,int ,int *) ;
 int binaryheap_build (int *) ;
 int binaryheap_empty (int *) ;
 int binaryheap_first (int *) ;
 int binaryheap_free (int *) ;
 int binaryheap_remove_first (int *) ;
 int binaryheap_replace_first (int *,int ) ;
 int checkpoint_flush_after ;
 int ckpt_buforder_comparator ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_3__*) ;
 int pg_atomic_read_u32 (int *) ;
 int qsort (TYPE_4__*,int,int,int ) ;
 scalar_t__ repalloc (TYPE_3__*,int) ;
 int ts_ckpt_progress_comparator ;

__attribute__((used)) static void
BufferSync(int flags)
{
 uint32 buf_state;
 int buf_id;
 int num_to_scan;
 int num_spaces;
 int num_processed;
 int num_written;
 CkptTsStatus *per_ts_stat = ((void*)0);
 Oid last_tsid;
 binaryheap *ts_heap;
 int i;
 int mask = BM_DIRTY;
 WritebackContext wb_context;


 ResourceOwnerEnlargeBuffers(CurrentResourceOwner);






 if (!((flags & (CHECKPOINT_IS_SHUTDOWN | CHECKPOINT_END_OF_RECOVERY |
     CHECKPOINT_FLUSH_ALL))))
  mask |= BM_PERMANENT;
 num_to_scan = 0;
 for (buf_id = 0; buf_id < NBuffers; buf_id++)
 {
  BufferDesc *bufHdr = GetBufferDescriptor(buf_id);





  buf_state = LockBufHdr(bufHdr);

  if ((buf_state & mask) == mask)
  {
   CkptSortItem *item;

   buf_state |= BM_CHECKPOINT_NEEDED;

   item = &CkptBufferIds[num_to_scan++];
   item->buf_id = buf_id;
   item->tsId = bufHdr->tag.rnode.spcNode;
   item->relNode = bufHdr->tag.rnode.relNode;
   item->forkNum = bufHdr->tag.forkNum;
   item->blockNum = bufHdr->tag.blockNum;
  }

  UnlockBufHdr(bufHdr, buf_state);
 }

 if (num_to_scan == 0)
  return;

 WritebackContextInit(&wb_context, &checkpoint_flush_after);

 TRACE_POSTGRESQL_BUFFER_SYNC_START(NBuffers, num_to_scan);
 qsort(CkptBufferIds, num_to_scan, sizeof(CkptSortItem),
    ckpt_buforder_comparator);

 num_spaces = 0;





 last_tsid = InvalidOid;
 for (i = 0; i < num_to_scan; i++)
 {
  CkptTsStatus *s;
  Oid cur_tsid;

  cur_tsid = CkptBufferIds[i].tsId;





  if (last_tsid == InvalidOid || last_tsid != cur_tsid)
  {
   Size sz;

   num_spaces++;





   sz = sizeof(CkptTsStatus) * num_spaces;

   if (per_ts_stat == ((void*)0))
    per_ts_stat = (CkptTsStatus *) palloc(sz);
   else
    per_ts_stat = (CkptTsStatus *) repalloc(per_ts_stat, sz);

   s = &per_ts_stat[num_spaces - 1];
   memset(s, 0, sizeof(*s));
   s->tsId = cur_tsid;






   s->index = i;






   last_tsid = cur_tsid;
  }
  else
  {
   s = &per_ts_stat[num_spaces - 1];
  }

  s->num_to_scan++;
 }

 Assert(num_spaces > 0);






 ts_heap = binaryheap_allocate(num_spaces,
          ts_ckpt_progress_comparator,
          ((void*)0));

 for (i = 0; i < num_spaces; i++)
 {
  CkptTsStatus *ts_stat = &per_ts_stat[i];

  ts_stat->progress_slice = (float8) num_to_scan / ts_stat->num_to_scan;

  binaryheap_add_unordered(ts_heap, PointerGetDatum(ts_stat));
 }

 binaryheap_build(ts_heap);







 num_processed = 0;
 num_written = 0;
 while (!binaryheap_empty(ts_heap))
 {
  BufferDesc *bufHdr = ((void*)0);
  CkptTsStatus *ts_stat = (CkptTsStatus *)
  DatumGetPointer(binaryheap_first(ts_heap));

  buf_id = CkptBufferIds[ts_stat->index].buf_id;
  Assert(buf_id != -1);

  bufHdr = GetBufferDescriptor(buf_id);

  num_processed++;
  if (pg_atomic_read_u32(&bufHdr->state) & BM_CHECKPOINT_NEEDED)
  {
   if (SyncOneBuffer(buf_id, 0, &wb_context) & BUF_WRITTEN)
   {
    TRACE_POSTGRESQL_BUFFER_SYNC_WRITTEN(buf_id);
    BgWriterStats.m_buf_written_checkpoints++;
    num_written++;
   }
  }





  ts_stat->progress += ts_stat->progress_slice;
  ts_stat->num_scanned++;
  ts_stat->index++;


  if (ts_stat->num_scanned == ts_stat->num_to_scan)
  {
   binaryheap_remove_first(ts_heap);
  }
  else
  {

   binaryheap_replace_first(ts_heap, PointerGetDatum(ts_stat));
  }




  CheckpointWriteDelay(flags, (double) num_processed / num_to_scan);
 }


 IssuePendingWritebacks(&wb_context);

 pfree(per_ts_stat);
 per_ts_stat = ((void*)0);
 binaryheap_free(ts_heap);





 CheckpointStats.ckpt_bufs_written += num_written;

 TRACE_POSTGRESQL_BUFFER_SYNC_DONE(NBuffers, num_written, num_to_scan);
}
