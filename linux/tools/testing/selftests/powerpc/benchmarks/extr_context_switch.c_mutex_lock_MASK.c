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

/* Variables and functions */
 int FUTEX_PRIVATE_FLAG ; 
 int FUTEX_WAIT ; 
 int FUNC0 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  processes ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long*,int) ; 

__attribute__((used)) static int FUNC3(unsigned long *m)
{
	int c;
	int flags = FUTEX_WAIT;
	if (!processes)
		flags |= FUTEX_PRIVATE_FLAG;

	c = FUNC0(m, 0, 1);
	if (!c)
		return 0;

	if (c == 1)
		c = FUNC2(m, 2);

	while (c) {
		FUNC1(m, flags, 2, NULL, NULL, 0);
		c = FUNC2(m, 2);
	}

	return 0;
}