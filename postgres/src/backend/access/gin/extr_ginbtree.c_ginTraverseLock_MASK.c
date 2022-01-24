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
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GIN_EXCLUSIVE ; 
 int GIN_SHARE ; 
 int GIN_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int
FUNC3(Buffer buffer, bool searchMode)
{
	Page		page;
	int			access = GIN_SHARE;

	FUNC2(buffer, GIN_SHARE);
	page = FUNC0(buffer);
	if (FUNC1(page))
	{
		if (searchMode == false)
		{
			/* we should relock our page */
			FUNC2(buffer, GIN_UNLOCK);
			FUNC2(buffer, GIN_EXCLUSIVE);

			/* But root can become non-leaf during relock */
			if (!FUNC1(page))
			{
				/* restore old lock type (very rare) */
				FUNC2(buffer, GIN_UNLOCK);
				FUNC2(buffer, GIN_SHARE);
			}
			else
				access = GIN_EXCLUSIVE;
		}
	}

	return access;
}