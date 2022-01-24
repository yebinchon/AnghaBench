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
typedef  int Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* LocalRefCount ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC7(Buffer buffer)
{
	if (!FUNC2(buffer))
		FUNC6(ERROR, "bad buffer ID: %d", buffer);

	if (FUNC1(buffer))
	{
		FUNC4(CurrentResourceOwner, buffer);

		FUNC0(LocalRefCount[-buffer - 1] > 0);
		LocalRefCount[-buffer - 1]--;
		return;
	}

	FUNC5(FUNC3(buffer - 1), true);
}