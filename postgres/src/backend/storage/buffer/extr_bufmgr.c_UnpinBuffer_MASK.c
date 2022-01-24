#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_13__ {int wait_backend_pid; int /*<<< orphan*/  state; } ;
struct TYPE_12__ {scalar_t__ refcount; } ;
typedef  TYPE_1__ PrivateRefCountEntry ;
typedef  TYPE_2__ BufferDesc ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_LOCKED ; 
 int BM_PIN_COUNT_WAITER ; 
 scalar_t__ BUF_REFCOUNT_ONE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(BufferDesc *buf, bool fixOwner)
{
	PrivateRefCountEntry *ref;
	Buffer		b = FUNC2(buf);

	/* not moving as we're likely deleting it soon anyway */
	ref = FUNC6(b, false);
	FUNC0(ref != NULL);

	if (fixOwner)
		FUNC10(CurrentResourceOwner, b);

	FUNC0(ref->refcount > 0);
	ref->refcount--;
	if (ref->refcount == 0)
	{
		uint32		buf_state;
		uint32		old_buf_state;

		/* I'd better not still hold any locks on the buffer */
		FUNC0(!FUNC7(FUNC3(buf)));
		FUNC0(!FUNC7(FUNC4(buf)));

		/*
		 * Decrement the shared reference count.
		 *
		 * Since buffer spinlock holder can update status using just write,
		 * it's not safe to use atomic decrement here; thus use a CAS loop.
		 */
		old_buf_state = FUNC14(&buf->state);
		for (;;)
		{
			if (old_buf_state & BM_LOCKED)
				old_buf_state = FUNC12(buf);

			buf_state = old_buf_state;

			buf_state -= BUF_REFCOUNT_ONE;

			if (FUNC13(&buf->state, &old_buf_state,
											   buf_state))
				break;
		}

		/* Support LockBufferForCleanup() */
		if (buf_state & BM_PIN_COUNT_WAITER)
		{
			/*
			 * Acquire the buffer header lock, re-check that there's a waiter.
			 * Another backend could have unpinned this buffer, and already
			 * woken up the waiter.  There's no danger of the buffer being
			 * replaced after we unpinned it above, as it's pinned by the
			 * waiter.
			 */
			buf_state = FUNC8(buf);

			if ((buf_state & BM_PIN_COUNT_WAITER) &&
				FUNC1(buf_state) == 1)
			{
				/* we just released the last pin other than the waiter's */
				int			wait_backend_pid = buf->wait_backend_pid;

				buf_state &= ~BM_PIN_COUNT_WAITER;
				FUNC11(buf, buf_state);
				FUNC9(wait_backend_pid);
			}
			else
				FUNC11(buf, buf_state);
		}
		FUNC5(ref);
	}
}