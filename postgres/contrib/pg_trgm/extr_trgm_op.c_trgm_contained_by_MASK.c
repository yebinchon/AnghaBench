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
typedef  int /*<<< orphan*/  trgm ;
typedef  int /*<<< orphan*/  TRGM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(TRGM *trg1, TRGM *trg2)
{
	trgm	   *ptr1,
			   *ptr2;
	int			len1,
				len2;

	ptr1 = FUNC2(trg1);
	ptr2 = FUNC2(trg2);

	len1 = FUNC0(trg1);
	len2 = FUNC0(trg2);

	while (ptr1 - FUNC2(trg1) < len1 && ptr2 - FUNC2(trg2) < len2)
	{
		int			res = FUNC1(ptr1, ptr2);

		if (res < 0)
			return false;
		else if (res > 0)
			ptr2++;
		else
		{
			ptr1++;
			ptr2++;
		}
	}
	if (ptr1 - FUNC2(trg1) < len1)
		return false;
	else
		return true;
}