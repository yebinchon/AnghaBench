#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  WritebackContext ;
struct TYPE_9__ {int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  BufferTag ;
typedef  TYPE_1__ BufferDesc ;

/* Variables and functions */
 int BM_DIRTY ; 
 int BM_VALID ; 
 int BUF_REUSABLE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int BUF_WRITTEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC13(int buf_id, bool skip_recently_used, WritebackContext *wb_context)
{
	BufferDesc *bufHdr = FUNC4(buf_id);
	int			result = 0;
	uint32		buf_state;
	BufferTag	tag;

	FUNC9();

	/*
	 * Check whether buffer needs writing.
	 *
	 * We can make this check without taking the buffer content lock so long
	 * as we mark pages dirty in access methods *before* logging changes with
	 * XLogInsert(): if someone marks the buffer dirty just after our check we
	 * don't worry because our checkpoint.redo points before log record for
	 * upcoming changes and so we are not required to write such dirty buffer.
	 */
	buf_state = FUNC7(bufHdr);

	if (FUNC0(buf_state) == 0 &&
		FUNC1(buf_state) == 0)
	{
		result |= BUF_REUSABLE;
	}
	else if (skip_recently_used)
	{
		/* Caller told us not to write recently-used buffers */
		FUNC11(bufHdr, buf_state);
		return result;
	}

	if (!(buf_state & BM_VALID) || !(buf_state & BM_DIRTY))
	{
		/* It's clean, so nothing to do */
		FUNC11(bufHdr, buf_state);
		return result;
	}

	/*
	 * Pin it, share-lock it, write it.  (FlushBuffer will do nothing if the
	 * buffer is clean by the time we've locked it.)
	 */
	FUNC8(bufHdr);
	FUNC5(FUNC2(bufHdr), LW_SHARED);

	FUNC3(bufHdr, NULL);

	FUNC6(FUNC2(bufHdr));

	tag = bufHdr->tag;

	FUNC12(bufHdr, true);

	FUNC10(wb_context, &tag);

	return result | BUF_WRITTEN;
}