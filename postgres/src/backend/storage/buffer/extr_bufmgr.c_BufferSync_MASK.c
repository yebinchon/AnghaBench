#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int float8 ;
typedef  int /*<<< orphan*/  binaryheap ;
typedef  int /*<<< orphan*/  WritebackContext ;
struct TYPE_19__ {scalar_t__ spcNode; int /*<<< orphan*/  relNode; } ;
struct TYPE_20__ {int /*<<< orphan*/  blockNum; int /*<<< orphan*/  forkNum; TYPE_1__ rnode; } ;
struct TYPE_23__ {int /*<<< orphan*/  state; TYPE_2__ tag; } ;
struct TYPE_22__ {int buf_id; scalar_t__ tsId; int /*<<< orphan*/  blockNum; int /*<<< orphan*/  forkNum; int /*<<< orphan*/  relNode; } ;
struct TYPE_21__ {int index; int num_to_scan; int progress_slice; scalar_t__ num_scanned; int /*<<< orphan*/  progress; scalar_t__ tsId; } ;
struct TYPE_18__ {int /*<<< orphan*/  m_buf_written_checkpoints; } ;
struct TYPE_17__ {int ckpt_bufs_written; } ;
typedef  int Size ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ CkptTsStatus ;
typedef  TYPE_4__ CkptSortItem ;
typedef  TYPE_5__ BufferDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_CHECKPOINT_NEEDED ; 
 int BM_DIRTY ; 
 int BM_PERMANENT ; 
 int BUF_WRITTEN ; 
 TYPE_16__ BgWriterStats ; 
 int CHECKPOINT_END_OF_RECOVERY ; 
 int CHECKPOINT_FLUSH_ALL ; 
 int CHECKPOINT_IS_SHUTDOWN ; 
 TYPE_15__ CheckpointStats ; 
 int /*<<< orphan*/  FUNC1 (int,double) ; 
 TYPE_4__* CkptBufferIds ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_5__*) ; 
 int NBuffers ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  checkpoint_flush_after ; 
 int /*<<< orphan*/  ckpt_buforder_comparator ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  ts_ckpt_progress_comparator ; 

__attribute__((used)) static void
FUNC28(int flags)
{
	uint32		buf_state;
	int			buf_id;
	int			num_to_scan;
	int			num_spaces;
	int			num_processed;
	int			num_written;
	CkptTsStatus *per_ts_stat = NULL;
	Oid			last_tsid;
	binaryheap *ts_heap;
	int			i;
	int			mask = BM_DIRTY;
	WritebackContext wb_context;

	/* Make sure we can handle the pin inside SyncOneBuffer */
	FUNC7(CurrentResourceOwner);

	/*
	 * Unless this is a shutdown checkpoint or we have been explicitly told,
	 * we write only permanent, dirty buffers.  But at shutdown or end of
	 * recovery, we write all dirty buffers.
	 */
	if (!((flags & (CHECKPOINT_IS_SHUTDOWN | CHECKPOINT_END_OF_RECOVERY |
					CHECKPOINT_FLUSH_ALL))))
		mask |= BM_PERMANENT;

	/*
	 * Loop over all buffers, and mark the ones that need to be written with
	 * BM_CHECKPOINT_NEEDED.  Count them as we go (num_to_scan), so that we
	 * can estimate how much work needs to be done.
	 *
	 * This allows us to write only those pages that were dirty when the
	 * checkpoint began, and not those that get dirtied while it proceeds.
	 * Whenever a page with BM_CHECKPOINT_NEEDED is written out, either by us
	 * later in this function, or by normal backends or the bgwriter cleaning
	 * scan, the flag is cleared.  Any buffer dirtied after this point won't
	 * have the flag set.
	 *
	 * Note that if we fail to write some buffer, we may leave buffers with
	 * BM_CHECKPOINT_NEEDED still set.  This is OK since any such buffer would
	 * certainly need to be written for the next checkpoint attempt, too.
	 */
	num_to_scan = 0;
	for (buf_id = 0; buf_id < NBuffers; buf_id++)
	{
		BufferDesc *bufHdr = FUNC3(buf_id);

		/*
		 * Header spinlock is enough to examine BM_DIRTY, see comment in
		 * SyncOneBuffer.
		 */
		buf_state = FUNC5(bufHdr);

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

		FUNC12(bufHdr, buf_state);
	}

	if (num_to_scan == 0)
		return;					/* nothing to do */

	FUNC13(&wb_context, &checkpoint_flush_after);

	FUNC10(NBuffers, num_to_scan);

	/*
	 * Sort buffers that need to be written to reduce the likelihood of random
	 * IO. The sorting is also important for the implementation of balancing
	 * writes between tablespaces. Without balancing writes we'd potentially
	 * end up writing to the tablespaces one-by-one; possibly overloading the
	 * underlying system.
	 */
	FUNC26(CkptBufferIds, num_to_scan, sizeof(CkptSortItem),
		  ckpt_buforder_comparator);

	num_spaces = 0;

	/*
	 * Allocate progress status for each tablespace with buffers that need to
	 * be flushed. This requires the to-be-flushed array to be sorted.
	 */
	last_tsid = InvalidOid;
	for (i = 0; i < num_to_scan; i++)
	{
		CkptTsStatus *s;
		Oid			cur_tsid;

		cur_tsid = CkptBufferIds[i].tsId;

		/*
		 * Grow array of per-tablespace status structs, every time a new
		 * tablespace is found.
		 */
		if (last_tsid == InvalidOid || last_tsid != cur_tsid)
		{
			Size		sz;

			num_spaces++;

			/*
			 * Not worth adding grow-by-power-of-2 logic here - even with a
			 * few hundred tablespaces this should be fine.
			 */
			sz = sizeof(CkptTsStatus) * num_spaces;

			if (per_ts_stat == NULL)
				per_ts_stat = (CkptTsStatus *) FUNC23(sz);
			else
				per_ts_stat = (CkptTsStatus *) FUNC27(per_ts_stat, sz);

			s = &per_ts_stat[num_spaces - 1];
			FUNC22(s, 0, sizeof(*s));
			s->tsId = cur_tsid;

			/*
			 * The first buffer in this tablespace. As CkptBufferIds is sorted
			 * by tablespace all (s->num_to_scan) buffers in this tablespace
			 * will follow afterwards.
			 */
			s->index = i;

			/*
			 * progress_slice will be determined once we know how many buffers
			 * are in each tablespace, i.e. after this loop.
			 */

			last_tsid = cur_tsid;
		}
		else
		{
			s = &per_ts_stat[num_spaces - 1];
		}

		s->num_to_scan++;
	}

	FUNC0(num_spaces > 0);

	/*
	 * Build a min-heap over the write-progress in the individual tablespaces,
	 * and compute how large a portion of the total progress a single
	 * processed buffer is.
	 */
	ts_heap = FUNC15(num_spaces,
								  ts_ckpt_progress_comparator,
								  NULL);

	for (i = 0; i < num_spaces; i++)
	{
		CkptTsStatus *ts_stat = &per_ts_stat[i];

		ts_stat->progress_slice = (float8) num_to_scan / ts_stat->num_to_scan;

		FUNC14(ts_heap, FUNC6(ts_stat));
	}

	FUNC16(ts_heap);

	/*
	 * Iterate through to-be-checkpointed buffers and write the ones (still)
	 * marked with BM_CHECKPOINT_NEEDED. The writes are balanced between
	 * tablespaces; otherwise the sorting would lead to only one tablespace
	 * receiving writes at a time, making inefficient use of the hardware.
	 */
	num_processed = 0;
	num_written = 0;
	while (!FUNC17(ts_heap))
	{
		BufferDesc *bufHdr = NULL;
		CkptTsStatus *ts_stat = (CkptTsStatus *)
		FUNC2(FUNC18(ts_heap));

		buf_id = CkptBufferIds[ts_stat->index].buf_id;
		FUNC0(buf_id != -1);

		bufHdr = FUNC3(buf_id);

		num_processed++;

		/*
		 * We don't need to acquire the lock here, because we're only looking
		 * at a single bit. It's possible that someone else writes the buffer
		 * and clears the flag right after we check, but that doesn't matter
		 * since SyncOneBuffer will then do nothing.  However, there is a
		 * further race condition: it's conceivable that between the time we
		 * examine the bit here and the time SyncOneBuffer acquires the lock,
		 * someone else not only wrote the buffer but replaced it with another
		 * page and dirtied it.  In that improbable case, SyncOneBuffer will
		 * write the buffer though we didn't need to.  It doesn't seem worth
		 * guarding against this, though.
		 */
		if (FUNC25(&bufHdr->state) & BM_CHECKPOINT_NEEDED)
		{
			if (FUNC8(buf_id, false, &wb_context) & BUF_WRITTEN)
			{
				FUNC11(buf_id);
				BgWriterStats.m_buf_written_checkpoints++;
				num_written++;
			}
		}

		/*
		 * Measure progress independent of actually having to flush the buffer
		 * - otherwise writing become unbalanced.
		 */
		ts_stat->progress += ts_stat->progress_slice;
		ts_stat->num_scanned++;
		ts_stat->index++;

		/* Have all the buffers from the tablespace been processed? */
		if (ts_stat->num_scanned == ts_stat->num_to_scan)
		{
			FUNC20(ts_heap);
		}
		else
		{
			/* update heap with the new progress */
			FUNC21(ts_heap, FUNC6(ts_stat));
		}

		/*
		 * Sleep to throttle our I/O rate.
		 */
		FUNC1(flags, (double) num_processed / num_to_scan);
	}

	/* issue all pending flushes */
	FUNC4(&wb_context);

	FUNC24(per_ts_stat);
	per_ts_stat = NULL;
	FUNC19(ts_heap);

	/*
	 * Update checkpoint statistics. As noted above, this doesn't include
	 * buffers written by other backends or bgwriter scan.
	 */
	CheckpointStats.ckpt_bufs_written += num_written;

	FUNC9(NBuffers, num_written, num_to_scan);
}