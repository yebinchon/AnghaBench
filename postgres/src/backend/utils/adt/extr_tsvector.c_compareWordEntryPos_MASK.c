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
 int FUNC0 (int /*<<< orphan*/  const) ; 

int
FUNC1(const void *a, const void *b)
{
	int			apos = FUNC0(*(const WordEntryPos *) a);
	int			bpos = FUNC0(*(const WordEntryPos *) b);

	if (apos == bpos)
		return 0;
	return (apos > bpos) ? 1 : -1;
}