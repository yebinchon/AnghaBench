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
typedef  int /*<<< orphan*/  WordEntryPos ;

/* Variables and functions */
 int MAXENTRYPOS ; 
 int MAXNUMPOS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  compareWordEntryPos ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(WordEntryPos *a, int l)
{
	WordEntryPos *ptr,
			   *res;

	if (l <= 1)
		return l;

	FUNC3((void *) a, l, sizeof(WordEntryPos), compareWordEntryPos);

	res = a;
	ptr = a + 1;
	while (ptr - a < l)
	{
		if (FUNC0(*ptr) != FUNC0(*res))
		{
			res++;
			*res = *ptr;
			if (res - a >= MAXNUMPOS - 1 ||
				FUNC0(*res) == MAXENTRYPOS - 1)
				break;
		}
		else if (FUNC1(*ptr) > FUNC1(*res))
			FUNC2(*res, FUNC1(*ptr));
		ptr++;
	}

	return res + 1 - a;
}