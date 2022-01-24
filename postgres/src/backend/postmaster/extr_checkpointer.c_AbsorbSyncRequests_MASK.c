#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  m_buf_fsync_backend; int /*<<< orphan*/  m_buf_written_backend; } ;
struct TYPE_7__ {int num_requests; int /*<<< orphan*/  requests; scalar_t__ num_backend_fsync; scalar_t__ num_backend_writes; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  ftag; } ;
typedef  TYPE_1__ CheckpointerRequest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__ BgWriterStats ; 
 int /*<<< orphan*/  CheckpointerCommLock ; 
 TYPE_4__* CheckpointerShmem ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(void)
{
	CheckpointerRequest *requests = NULL;
	CheckpointerRequest *request;
	int			n;

	if (!FUNC0())
		return;

	FUNC2(CheckpointerCommLock, LW_EXCLUSIVE);

	/* Transfer stats counts into pending pgstats message */
	BgWriterStats.m_buf_written_backend += CheckpointerShmem->num_backend_writes;
	BgWriterStats.m_buf_fsync_backend += CheckpointerShmem->num_backend_fsync;

	CheckpointerShmem->num_backend_writes = 0;
	CheckpointerShmem->num_backend_fsync = 0;

	/*
	 * We try to avoid holding the lock for a long time by copying the request
	 * array, and processing the requests after releasing the lock.
	 *
	 * Once we have cleared the requests from shared memory, we have to PANIC
	 * if we then fail to absorb them (eg, because our hashtable runs out of
	 * memory).  This is because the system cannot run safely if we are unable
	 * to fsync what we have been told to fsync.  Fortunately, the hashtable
	 * is so small that the problem is quite unlikely to arise in practice.
	 */
	n = CheckpointerShmem->num_requests;
	if (n > 0)
	{
		requests = (CheckpointerRequest *) FUNC7(n * sizeof(CheckpointerRequest));
		FUNC6(requests, CheckpointerShmem->requests, n * sizeof(CheckpointerRequest));
	}

	FUNC5();

	CheckpointerShmem->num_requests = 0;

	FUNC3(CheckpointerCommLock);

	for (request = requests; n > 0; request++, n--)
		FUNC4(&request->ftag, request->type);

	FUNC1();

	if (requests)
		FUNC8(requests);
}