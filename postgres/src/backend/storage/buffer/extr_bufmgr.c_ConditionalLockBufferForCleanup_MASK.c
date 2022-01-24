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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  BufferDesc ;
typedef  int Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int* LocalRefCount ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

bool
FUNC10(Buffer buffer)
{
	BufferDesc *bufHdr;
	uint32		buf_state,
				refcount;

	FUNC0(FUNC3(buffer));

	if (FUNC2(buffer))
	{
		refcount = LocalRefCount[-buffer - 1];
		/* There should be exactly one pin */
		FUNC0(refcount > 0);
		if (refcount != 1)
			return false;
		/* Nobody else to wait for */
		return true;
	}

	/* There should be exactly one local pin */
	refcount = FUNC6(buffer);
	FUNC0(refcount);
	if (refcount != 1)
		return false;

	/* Try to acquire lock */
	if (!FUNC4(buffer))
		return false;

	bufHdr = FUNC5(buffer - 1);
	buf_state = FUNC7(bufHdr);
	refcount = FUNC1(buf_state);

	FUNC0(refcount > 0);
	if (refcount == 1)
	{
		/* Successfully acquired exclusive lock with pincount 1 */
		FUNC9(bufHdr, buf_state);
		return true;
	}

	/* Failed, so release the lock */
	FUNC9(bufHdr, buf_state);
	FUNC8(buffer, BUFFER_LOCK_UNLOCK);
	return false;
}