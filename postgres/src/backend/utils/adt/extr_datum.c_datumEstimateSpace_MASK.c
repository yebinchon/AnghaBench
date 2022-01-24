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
typedef  int Size ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 

Size
FUNC5(Datum value, bool isnull, bool typByVal, int typLen)
{
	Size		sz = sizeof(int);

	if (!isnull)
	{
		/* no need to use add_size, can't overflow */
		if (typByVal)
			sz += sizeof(Datum);
		else if (typLen == -1 &&
				 FUNC3(FUNC1(value)))
		{
			/* Expanded objects need to be flattened, see comment below */
			sz += FUNC2(FUNC0(value));
		}
		else
			sz += FUNC4(value, typByVal, typLen);
	}

	return sz;
}