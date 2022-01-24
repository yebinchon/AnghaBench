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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(Buffer buffer)
{
	BufferDesc *bufHdr;

	/* currently not needed, but no fundamental reason not to support */
	FUNC0(!FUNC2(buffer));

	FUNC0(FUNC3(buffer));

	bufHdr = FUNC5(buffer - 1);

	FUNC0(FUNC6(FUNC1(bufHdr)));

	FUNC4(bufHdr, NULL);
}