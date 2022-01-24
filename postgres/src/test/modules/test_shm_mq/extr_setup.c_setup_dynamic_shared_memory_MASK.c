#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_12__ {int workers_total; scalar_t__ workers_ready; scalar_t__ workers_attached; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ test_shm_mq_header ;
typedef  int /*<<< orphan*/  shm_toc_estimator ;
typedef  int /*<<< orphan*/  shm_toc ;
typedef  TYPE_1__ shm_mq ;
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MyProc ; 
 int /*<<< orphan*/  PG_TEST_SHM_MQ_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ shm_mq_minimum_size ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC16(int64 queue_size, int nworkers,
							dsm_segment **segp, test_shm_mq_header **hdrp,
							shm_mq **outp, shm_mq **inp)
{
	shm_toc_estimator e;
	int			i;
	Size		segsize;
	dsm_segment *seg;
	shm_toc    *toc;
	test_shm_mq_header *hdr;

	/* Ensure a valid queue size. */
	if (queue_size < 0 || ((uint64) queue_size) < shm_mq_minimum_size)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC5("queue size must be at least %zu bytes",
						shm_mq_minimum_size)));
	if (queue_size != ((Size) queue_size))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC5("queue size overflows size_t")));

	/*
	 * Estimate how much shared memory we need.
	 *
	 * Because the TOC machinery may choose to insert padding of oddly-sized
	 * requests, we must estimate each chunk separately.
	 *
	 * We need one key to register the location of the header, and we need
	 * nworkers + 1 keys to track the locations of the message queues.
	 */
	FUNC14(&e);
	FUNC12(&e, sizeof(test_shm_mq_header));
	for (i = 0; i <= nworkers; ++i)
		FUNC12(&e, (Size) queue_size);
	FUNC13(&e, 2 + nworkers);
	segsize = FUNC11(&e);

	/* Create the shared memory segment and establish a table of contents. */
	seg = FUNC1(FUNC11(&e), 0);
	toc = FUNC10(PG_TEST_SHM_MQ_MAGIC, FUNC2(seg),
						 segsize);

	/* Set up the header region. */
	hdr = FUNC9(toc, sizeof(test_shm_mq_header));
	FUNC0(&hdr->mutex);
	hdr->workers_total = nworkers;
	hdr->workers_attached = 0;
	hdr->workers_ready = 0;
	FUNC15(toc, 0, hdr);

	/* Set up one message queue per worker, plus one. */
	for (i = 0; i <= nworkers; ++i)
	{
		shm_mq	   *mq;

		mq = FUNC6(FUNC9(toc, (Size) queue_size),
						   (Size) queue_size);
		FUNC15(toc, i + 1, mq);

		if (i == 0)
		{
			/* We send messages to the first queue. */
			FUNC8(mq, MyProc);
			*outp = mq;
		}
		if (i == nworkers)
		{
			/* We receive messages from the last queue. */
			FUNC7(mq, MyProc);
			*inp = mq;
		}
	}

	/* Return results to caller. */
	*segp = seg;
	*hdrp = hdr;
}