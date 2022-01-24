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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  BufferDesc ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

XLogRecPtr
FUNC10(Buffer buffer)
{
	BufferDesc *bufHdr = FUNC5(buffer - 1);
	char	   *page = FUNC1(buffer);
	XLogRecPtr	lsn;
	uint32		buf_state;

	/*
	 * If we don't need locking for correctness, fastpath out.
	 */
	if (!FUNC9() || FUNC2(buffer))
		return FUNC7(page);

	/* Make sure we've got a real buffer, and that we hold a pin on it. */
	FUNC0(FUNC4(buffer));
	FUNC0(FUNC3(buffer));

	buf_state = FUNC6(bufHdr);
	lsn = FUNC7(page);
	FUNC8(bufHdr, buf_state);

	return lsn;
}