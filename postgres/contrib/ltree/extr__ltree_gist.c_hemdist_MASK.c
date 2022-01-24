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
typedef  int /*<<< orphan*/  ltree_gist ;

/* Variables and functions */
 int ASIGLENBIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(ltree_gist *a, ltree_gist *b)
{
	if (FUNC0(a))
	{
		if (FUNC0(b))
			return 0;
		else
			return ASIGLENBIT - FUNC3(FUNC1(b));
	}
	else if (FUNC0(b))
		return ASIGLENBIT - FUNC3(FUNC1(a));

	return FUNC2(FUNC1(a), FUNC1(b));
}