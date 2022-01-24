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
typedef  int /*<<< orphan*/  WordEntry ;
typedef  int /*<<< orphan*/  TSVector ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(TSVector t)
{
	WordEntry  *ptr = FUNC0(t),
			   *end = (WordEntry *) FUNC2(t);
	int			len = 0;

	while (ptr < end)
	{
		int			clen = FUNC1(t, ptr);

		if (clen == 0)
			len += 1;
		else
			len += clen;

		ptr++;
	}

	return len;
}