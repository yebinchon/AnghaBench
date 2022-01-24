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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 unsigned long* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,unsigned long*) ; 

int FUNC8(void)
{
	unsigned int len;
	unsigned long *m;
	unsigned int cpu;
	uint64_t u0, u1, i0, i1;
	int fd;

	/* find out "nr_cpu_ids" */
	m = NULL;
	len = 0;
	do {
		len += sizeof(unsigned long);
		FUNC1(m);
		m = FUNC2(len);
	} while (FUNC6(0, len, m) == -EINVAL);

	fd = FUNC4("/proc/uptime", O_RDONLY);
	FUNC0(fd >= 0);

	FUNC5(fd, &u0, &i0);
	for (cpu = 0; cpu < len * 8; cpu++) {
		FUNC3(m, 0, len);
		m[cpu / (8 * sizeof(unsigned long))] |= 1UL << (cpu % (8 * sizeof(unsigned long)));

		/* CPU might not exist, ignore error */
		FUNC7(0, len, m);

		FUNC5(fd, &u1, &i1);
		FUNC0(u1 >= u0);
		FUNC0(i1 >= i0);
		u0 = u1;
		i0 = i1;
	}

	return 0;
}