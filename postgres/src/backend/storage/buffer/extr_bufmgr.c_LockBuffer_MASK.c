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
typedef  int /*<<< orphan*/  BufferDesc ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BUFFER_LOCK_EXCLUSIVE ; 
 int BUFFER_LOCK_SHARE ; 
 int BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC8(Buffer buffer, int mode)
{
	BufferDesc *buf;

	FUNC0(FUNC3(buffer));
	if (FUNC2(buffer))
		return;					/* local buffers need no lock */

	buf = FUNC4(buffer - 1);

	if (mode == BUFFER_LOCK_UNLOCK)
		FUNC6(FUNC1(buf));
	else if (mode == BUFFER_LOCK_SHARE)
		FUNC5(FUNC1(buf), LW_SHARED);
	else if (mode == BUFFER_LOCK_EXCLUSIVE)
		FUNC5(FUNC1(buf), LW_EXCLUSIVE);
	else
		FUNC7(ERROR, "unrecognized buffer lock mode: %d", mode);
}