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
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ITERATIONS_BENCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,double) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *s)
{
	struct timespec ts_start, ts_end;
	int i;

	FUNC0(CLOCK_MONOTONIC, &ts_start);

	for (i = 0; i < ITERATIONS_BENCH; i++)
		FUNC2(s);

	FUNC0(CLOCK_MONOTONIC, &ts_end);

	FUNC1("len %3.3d : time = %.6f\n", FUNC2(s), ts_end.tv_sec - ts_start.tv_sec + (ts_end.tv_nsec - ts_start.tv_nsec) / 1e9);
}