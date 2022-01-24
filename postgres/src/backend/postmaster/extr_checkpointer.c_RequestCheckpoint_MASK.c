#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ckpt_failed; int ckpt_started; int ckpt_flags; scalar_t__ checkpointer_pid; int ckpt_done; int /*<<< orphan*/  done_cv; int /*<<< orphan*/  ckpt_lck; int /*<<< orphan*/  start_cv; } ;

/* Variables and functions */
 int CHECKPOINT_IMMEDIATE ; 
 int CHECKPOINT_REQUESTED ; 
 int CHECKPOINT_WAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* CheckpointerShmem ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  IsPostmasterEnvironment ; 
 int /*<<< orphan*/  LOG ; 
 int MAX_SIGNAL_TRIES ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAIT_EVENT_CHECKPOINT_DONE ; 
 int /*<<< orphan*/  WAIT_EVENT_CHECKPOINT_START ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (long) ; 
 int /*<<< orphan*/  FUNC13 () ; 

void
FUNC14(int flags)
{
	int			ntries;
	int			old_failed,
				old_started;

	/*
	 * If in a standalone backend, just do it ourselves.
	 */
	if (!IsPostmasterEnvironment)
	{
		/*
		 * There's no point in doing slow checkpoints in a standalone backend,
		 * because there's no other backends the checkpoint could disrupt.
		 */
		FUNC4(flags | CHECKPOINT_IMMEDIATE);

		/*
		 * After any checkpoint, close all smgr files.  This is so we won't
		 * hang onto smgr references to deleted files indefinitely.
		 */
		FUNC13();

		return;
	}

	/*
	 * Atomically set the request flags, and take a snapshot of the counters.
	 * When we see ckpt_started > old_started, we know the flags we set here
	 * have been seen by checkpointer.
	 *
	 * Note that we OR the flags with any existing flags, to avoid overriding
	 * a "stronger" request by another backend.  The flag senses must be
	 * chosen to make this work!
	 */
	FUNC5(&CheckpointerShmem->ckpt_lck);

	old_failed = CheckpointerShmem->ckpt_failed;
	old_started = CheckpointerShmem->ckpt_started;
	CheckpointerShmem->ckpt_flags |= (flags | CHECKPOINT_REQUESTED);

	FUNC6(&CheckpointerShmem->ckpt_lck);

	/*
	 * Send signal to request checkpoint.  It's possible that the checkpointer
	 * hasn't started yet, or is in process of restarting, so we will retry a
	 * few times if needed.  (Actually, more than a few times, since on slow
	 * or overloaded buildfarm machines, it's been observed that the
	 * checkpointer can take several seconds to start.)  However, if not told
	 * to wait for the checkpoint to occur, we consider failure to send the
	 * signal to be nonfatal and merely LOG it.  The checkpointer should see
	 * the request when it does start, with or without getting a signal.
	 */
#define MAX_SIGNAL_TRIES 600	/* max wait 60.0 sec */
	for (ntries = 0;; ntries++)
	{
		if (CheckpointerShmem->checkpointer_pid == 0)
		{
			if (ntries >= MAX_SIGNAL_TRIES || !(flags & CHECKPOINT_WAIT))
			{
				FUNC7((flags & CHECKPOINT_WAIT) ? ERROR : LOG,
					 "could not signal for checkpoint: checkpointer is not running");
				break;
			}
		}
		else if (FUNC11(CheckpointerShmem->checkpointer_pid, SIGINT) != 0)
		{
			if (ntries >= MAX_SIGNAL_TRIES || !(flags & CHECKPOINT_WAIT))
			{
				FUNC7((flags & CHECKPOINT_WAIT) ? ERROR : LOG,
					 "could not signal for checkpoint: %m");
				break;
			}
		}
		else
			break;				/* signal sent successfully */

		FUNC0();
		FUNC12(100000L);		/* wait 0.1 sec, then retry */
	}

	/*
	 * If requested, wait for completion.  We detect completion according to
	 * the algorithm given above.
	 */
	if (flags & CHECKPOINT_WAIT)
	{
		int			new_started,
					new_failed;

		/* Wait for a new checkpoint to start. */
		FUNC2(&CheckpointerShmem->start_cv);
		for (;;)
		{
			FUNC5(&CheckpointerShmem->ckpt_lck);
			new_started = CheckpointerShmem->ckpt_started;
			FUNC6(&CheckpointerShmem->ckpt_lck);

			if (new_started != old_started)
				break;

			FUNC3(&CheckpointerShmem->start_cv,
								   WAIT_EVENT_CHECKPOINT_START);
		}
		FUNC1();

		/*
		 * We are waiting for ckpt_done >= new_started, in a modulo sense.
		 */
		FUNC2(&CheckpointerShmem->done_cv);
		for (;;)
		{
			int			new_done;

			FUNC5(&CheckpointerShmem->ckpt_lck);
			new_done = CheckpointerShmem->ckpt_done;
			new_failed = CheckpointerShmem->ckpt_failed;
			FUNC6(&CheckpointerShmem->ckpt_lck);

			if (new_done - new_started >= 0)
				break;

			FUNC3(&CheckpointerShmem->done_cv,
								   WAIT_EVENT_CHECKPOINT_DONE);
		}
		FUNC1();

		if (new_failed != old_failed)
			FUNC8(ERROR,
					(FUNC10("checkpoint request failed"),
					 FUNC9("Consult recent messages in the server log for details.")));
	}
}