#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  shm_mq_result ;
struct TYPE_9__ {int mqh_counterparty_attached; int /*<<< orphan*/  mqh_handle; TYPE_2__* mqh_queue; } ;
typedef  TYPE_1__ shm_mq_handle ;
struct TYPE_10__ {scalar_t__ mq_ring_size; int mq_detached; scalar_t__ mq_ring_offset; int /*<<< orphan*/ * mq_ring; TYPE_4__* mq_receiver; int /*<<< orphan*/  mq_bytes_written; int /*<<< orphan*/  mq_bytes_read; } ;
typedef  TYPE_2__ shm_mq ;
struct TYPE_11__ {int /*<<< orphan*/  procLatch; } ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHM_MQ_DETACHED ; 
 int /*<<< orphan*/  SHM_MQ_SUCCESS ; 
 int /*<<< orphan*/  SHM_MQ_WOULD_BLOCK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAIT_EVENT_MQ_SEND ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_4__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static shm_mq_result
FUNC15(shm_mq_handle *mqh, Size nbytes, const void *data,
				  bool nowait, Size *bytes_written)
{
	shm_mq	   *mq = mqh->mqh_queue;
	Size		sent = 0;
	uint64		used;
	Size		ringsize = mq->mq_ring_size;
	Size		available;

	while (sent < nbytes)
	{
		uint64		rb;
		uint64		wb;

		/* Compute number of ring buffer bytes used and available. */
		rb = FUNC8(&mq->mq_bytes_read);
		wb = FUNC8(&mq->mq_bytes_written);
		FUNC0(wb >= rb);
		used = wb - rb;
		FUNC0(used <= ringsize);
		available = FUNC3(ringsize - used, nbytes - sent);

		/*
		 * Bail out if the queue has been detached.  Note that we would be in
		 * trouble if the compiler decided to cache the value of
		 * mq->mq_detached in a register or on the stack across loop
		 * iterations.  It probably shouldn't do that anyway since we'll
		 * always return, call an external function that performs a system
		 * call, or reach a memory barrier at some point later in the loop,
		 * but just to be sure, insert a compiler barrier here.
		 */
		FUNC9();
		if (mq->mq_detached)
		{
			*bytes_written = sent;
			return SHM_MQ_DETACHED;
		}

		if (available == 0 && !mqh->mqh_counterparty_attached)
		{
			/*
			 * The queue is full, so if the receiver isn't yet known to be
			 * attached, we must wait for that to happen.
			 */
			if (nowait)
			{
				if (FUNC11(mq, mqh->mqh_handle))
				{
					*bytes_written = sent;
					return SHM_MQ_DETACHED;
				}
				if (FUNC12(mq) == NULL)
				{
					*bytes_written = sent;
					return SHM_MQ_WOULD_BLOCK;
				}
			}
			else if (!FUNC14(mq, &mq->mq_receiver,
										   mqh->mqh_handle))
			{
				mq->mq_detached = true;
				*bytes_written = sent;
				return SHM_MQ_DETACHED;
			}
			mqh->mqh_counterparty_attached = true;

			/*
			 * The receiver may have read some data after attaching, so we
			 * must not wait without rechecking the queue state.
			 */
		}
		else if (available == 0)
		{
			/*
			 * Since mq->mqh_counterparty_attached is known to be true at this
			 * point, mq_receiver has been set, and it can't change once set.
			 * Therefore, we can read it without acquiring the spinlock.
			 */
			FUNC0(mqh->mqh_counterparty_attached);
			FUNC5(&mq->mq_receiver->procLatch);

			/* Skip manipulation of our latch if nowait = true. */
			if (nowait)
			{
				*bytes_written = sent;
				return SHM_MQ_WOULD_BLOCK;
			}

			/*
			 * Wait for our latch to be set.  It might already be set for some
			 * unrelated reason, but that'll just result in one extra trip
			 * through the loop.  It's worth it to avoid resetting the latch
			 * at top of loop, because setting an already-set latch is much
			 * cheaper than setting one that has been reset.
			 */
			(void) FUNC6(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
							 WAIT_EVENT_MQ_SEND);

			/* Reset the latch so we don't spin. */
			FUNC4(MyLatch);

			/* An interrupt may have occurred while we were waiting. */
			FUNC1();
		}
		else
		{
			Size		offset;
			Size		sendnow;

			offset = wb % (uint64) ringsize;
			sendnow = FUNC3(available, ringsize - offset);

			/*
			 * Write as much data as we can via a single memcpy(). Make sure
			 * these writes happen after the read of mq_bytes_read, above.
			 * This barrier pairs with the one in shm_mq_inc_bytes_read.
			 * (Since we're separating the read of mq_bytes_read from a
			 * subsequent write to mq_ring, we need a full barrier here.)
			 */
			FUNC10();
			FUNC7(&mq->mq_ring[mq->mq_ring_offset + offset],
				   (char *) data + sent, sendnow);
			sent += sendnow;

			/*
			 * Update count of bytes written, with alignment padding.  Note
			 * that this will never actually insert any padding except at the
			 * end of a run of bytes, because the buffer size is a multiple of
			 * MAXIMUM_ALIGNOF, and each read is as well.
			 */
			FUNC0(sent == nbytes || sendnow == FUNC2(sendnow));
			FUNC13(mq, FUNC2(sendnow));

			/*
			 * For efficiency, we don't set the reader's latch here.  We'll do
			 * that only when the buffer fills up or after writing an entire
			 * message.
			 */
		}
	}

	*bytes_written = sent;
	return SHM_MQ_SUCCESS;
}