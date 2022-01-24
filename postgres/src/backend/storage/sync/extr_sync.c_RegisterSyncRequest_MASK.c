#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SyncRequestType ;
typedef  int /*<<< orphan*/  FileTag ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pendingOps ; 
 int /*<<< orphan*/  FUNC2 (long) ; 

bool
FUNC3(const FileTag *ftag, SyncRequestType type,
					bool retryOnError)
{
	bool		ret;

	if (pendingOps != NULL)
	{
		/* standalone backend or startup process: fsync state is local */
		FUNC1(ftag, type);
		return true;
	}

	for (;;)
	{
		/*
		 * Notify the checkpointer about it.  If we fail to queue a message in
		 * retryOnError mode, we have to sleep and try again ... ugly, but
		 * hopefully won't happen often.
		 *
		 * XXX should we CHECK_FOR_INTERRUPTS in this loop?  Escaping with an
		 * error in the case of SYNC_UNLINK_REQUEST would leave the
		 * no-longer-used file still present on disk, which would be bad, so
		 * I'm inclined to assume that the checkpointer will always empty the
		 * queue soon.
		 */
		ret = FUNC0(ftag, type);

		/*
		 * If we are successful in queueing the request, or we failed and were
		 * instructed not to retry on error, break.
		 */
		if (ret || (!ret && !retryOnError))
			break;

		FUNC2(10000L);
	}

	return ret;
}