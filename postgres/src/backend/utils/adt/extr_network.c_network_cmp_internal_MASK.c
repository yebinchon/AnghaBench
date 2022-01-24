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
typedef  int int32 ;
typedef  int /*<<< orphan*/  inet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32
FUNC6(inet *a1, inet *a2)
{
	if (FUNC4(a1) == FUNC4(a2))
	{
		int			order;

		order = FUNC1(FUNC2(a1), FUNC2(a2),
						FUNC0(FUNC3(a1), FUNC3(a2)));
		if (order != 0)
			return order;
		order = ((int) FUNC3(a1)) - ((int) FUNC3(a2));
		if (order != 0)
			return order;
		return FUNC1(FUNC2(a1), FUNC2(a2), FUNC5(a1));
	}

	return FUNC4(a1) - FUNC4(a2);
}