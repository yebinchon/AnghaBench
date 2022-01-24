#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_8__ {int /*<<< orphan*/  blockNum; int /*<<< orphan*/  forkNum; int /*<<< orphan*/  rnode; } ;
struct TYPE_9__ {TYPE_1__ tag; } ;
typedef  TYPE_2__ BufferDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_DIRTY ; 
 int BM_IO_ERROR ; 
 int BM_IO_IN_PROGRESS ; 
 int BM_VALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_IO_ERROR ; 
 TYPE_2__* InProgressBuf ; 
 scalar_t__ IsForInput ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(void)
{
	BufferDesc *buf = InProgressBuf;

	if (buf)
	{
		uint32		buf_state;

		/*
		 * Since LWLockReleaseAll has already been called, we're not holding
		 * the buffer's io_in_progress_lock. We have to re-acquire it so that
		 * we can use TerminateBufferIO. Anyone who's executing WaitIO on the
		 * buffer will be in a busy spin until we succeed in doing this.
		 */
		FUNC2(FUNC1(buf), LW_EXCLUSIVE);

		buf_state = FUNC3(buf);
		FUNC0(buf_state & BM_IO_IN_PROGRESS);
		if (IsForInput)
		{
			FUNC0(!(buf_state & BM_DIRTY));

			/* We'd better not think buffer is valid yet */
			FUNC0(!(buf_state & BM_VALID));
			FUNC5(buf, buf_state);
		}
		else
		{
			FUNC0(buf_state & BM_DIRTY);
			FUNC5(buf, buf_state);
			/* Issue notice if this is not the first failure... */
			if (buf_state & BM_IO_ERROR)
			{
				/* Buffer is pinned, so we can read tag without spinlock */
				char	   *path;

				path = FUNC11(buf->tag.rnode, buf->tag.forkNum);
				FUNC6(WARNING,
						(FUNC7(ERRCODE_IO_ERROR),
						 FUNC9("could not write block %u of %s",
								buf->tag.blockNum, path),
						 FUNC8("Multiple failures --- write error might be permanent.")));
				FUNC10(path);
			}
		}
		FUNC4(buf, false, BM_IO_ERROR);
	}
}