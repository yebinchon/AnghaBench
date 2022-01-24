#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int buf_id; int freeNext; scalar_t__ wait_backend_pid; int /*<<< orphan*/  state; int /*<<< orphan*/  tag; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  LWLockMinimallyPadded ;
typedef  int /*<<< orphan*/  CkptSortItem ;
typedef  int /*<<< orphan*/  BufferDescPadded ;
typedef  TYPE_1__ BufferDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  BackendWritebackContext ; 
 char* BufferBlocks ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * BufferDescriptors ; 
 int /*<<< orphan*/ * BufferIOLWLockArray ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CkptBufferIds ; 
 int FREENEXT_END_OF_LIST ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LWTRANCHE_BUFFER_CONTENT ; 
 int /*<<< orphan*/  LWTRANCHE_BUFFER_IO_IN_PROGRESS ; 
 int NBuffers ; 
 scalar_t__ FUNC7 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  backend_flush_after ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC11(void)
{
	bool		foundBufs,
				foundDescs,
				foundIOLocks,
				foundBufCkpt;

	/* Align descriptors to a cacheline boundary. */
	BufferDescriptors = (BufferDescPadded *)
		FUNC7("Buffer Descriptors",
						NBuffers * sizeof(BufferDescPadded),
						&foundDescs);

	BufferBlocks = (char *)
		FUNC7("Buffer Blocks",
						NBuffers * (Size) BLCKSZ, &foundBufs);

	/* Align lwlocks to cacheline boundary */
	BufferIOLWLockArray = (LWLockMinimallyPadded *)
		FUNC7("Buffer IO Locks",
						NBuffers * (Size) sizeof(LWLockMinimallyPadded),
						&foundIOLocks);

	FUNC6(LWTRANCHE_BUFFER_IO_IN_PROGRESS, "buffer_io");
	FUNC6(LWTRANCHE_BUFFER_CONTENT, "buffer_content");

	/*
	 * The array used to sort to-be-checkpointed buffer ids is located in
	 * shared memory, to avoid having to allocate significant amounts of
	 * memory at runtime. As that'd be in the middle of a checkpoint, or when
	 * the checkpointer is restarted, memory allocation failures would be
	 * painful.
	 */
	CkptBufferIds = (CkptSortItem *)
		FUNC7("Checkpoint BufferIds",
						NBuffers * sizeof(CkptSortItem), &foundBufCkpt);

	if (foundDescs || foundBufs || foundIOLocks || foundBufCkpt)
	{
		/* should find all of these, or none of them */
		FUNC0(foundDescs && foundBufs && foundIOLocks && foundBufCkpt);
		/* note: this path is only taken in EXEC_BACKEND case */
	}
	else
	{
		int			i;

		/*
		 * Initialize all the buffer headers.
		 */
		for (i = 0; i < NBuffers; i++)
		{
			BufferDesc *buf = FUNC4(i);

			FUNC3(buf->tag);

			FUNC10(&buf->state, 0);
			buf->wait_backend_pid = 0;

			buf->buf_id = i;

			/*
			 * Initially link all the buffers together as unused. Subsequent
			 * management of this list is done by freelist.c.
			 */
			buf->freeNext = i + 1;

			FUNC5(FUNC1(buf),
							 LWTRANCHE_BUFFER_CONTENT);

			FUNC5(FUNC2(buf),
							 LWTRANCHE_BUFFER_IO_IN_PROGRESS);
		}

		/* Correct last entry of linked list */
		FUNC4(NBuffers - 1)->freeNext = FREENEXT_END_OF_LIST;
	}

	/* Init other shared buffer-management stuff */
	FUNC8(!foundDescs);

	/* Initialize per-backend file flush context */
	FUNC9(&BackendWritebackContext,
						 &backend_flush_after);
}