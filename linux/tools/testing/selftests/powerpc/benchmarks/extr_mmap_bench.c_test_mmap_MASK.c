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
struct timespec {double tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int CHUNK_COUNT ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAP_ANONYMOUS ; 
 char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  MEMSIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 unsigned long iterations ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ pg_fault ; 
 int /*<<< orphan*/  FUNC4 (char*,double) ; 

int FUNC5(void)
{
	struct timespec ts_start, ts_end;
	unsigned long i = iterations;

	FUNC1(CLOCK_MONOTONIC, &ts_start);

	while (i--) {
		char *c = FUNC2(NULL, MEMSIZE, PROT_READ|PROT_WRITE,
			       MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
		FUNC0(c == MAP_FAILED);
		if (pg_fault) {
			int count;
			for (count = 0; count < CHUNK_COUNT; count++)
				c[count << 16] = 'c';
		}
		FUNC3(c, MEMSIZE);
	}

	FUNC1(CLOCK_MONOTONIC, &ts_end);

	FUNC4("time = %.6f\n", ts_end.tv_sec - ts_start.tv_sec + (ts_end.tv_nsec - ts_start.tv_nsec) / 1e9);

	return 0;
}