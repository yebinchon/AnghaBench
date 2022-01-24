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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  BufferDesc ;
typedef  int Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int* LocalRefCount ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC10(Buffer buffer)
{
	BufferDesc *bufHdr;
	uint32		buf_state;

	FUNC0(FUNC4(buffer));

	if (FUNC3(buffer))
	{
		/* There should be exactly one pin */
		if (LocalRefCount[-buffer - 1] != 1)
			return false;
		/* Nobody else to wait for */
		return true;
	}

	/* There should be exactly one local pin */
	if (FUNC6(buffer) != 1)
		return false;

	bufHdr = FUNC5(buffer - 1);

	/* caller must hold exclusive lock on buffer */
	FUNC0(FUNC7(FUNC2(bufHdr),
								LW_EXCLUSIVE));

	buf_state = FUNC8(bufHdr);

	FUNC0(FUNC1(buf_state) > 0);
	if (FUNC1(buf_state) == 1)
	{
		/* pincount is OK. */
		FUNC9(bufHdr, buf_state);
		return true;
	}

	FUNC9(bufHdr, buf_state);
	return false;
}