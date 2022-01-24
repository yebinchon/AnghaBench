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
typedef  int uint64 ;
typedef  int int64 ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  instr_time ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * histogram ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static uint64
FUNC9(int32 duration)
{
	uint64		total_time;
	int64		time_elapsed = 0;
	uint64		loop_count = 0;
	uint64		prev,
				cur;
	instr_time	start_time,
				end_time,
				temp;

	total_time = duration > 0 ? duration * FUNC4(1000000) : 0;

	FUNC2(start_time);
	cur = FUNC1(start_time);

	while (time_elapsed < total_time)
	{
		int32		diff,
					bits = 0;

		prev = cur;
		FUNC2(temp);
		cur = FUNC1(temp);
		diff = cur - prev;

		/* Did time go backwards? */
		if (diff < 0)
		{
			FUNC7(stderr, "%s", FUNC5("Detected clock going backwards in time.\n"));
			FUNC7(stderr, FUNC5("Time warp: %d ms\n"), diff);
			FUNC6(1);
		}

		/* What is the highest bit in the time diff? */
		while (diff)
		{
			diff >>= 1;
			bits++;
		}

		/* Update appropriate duration bucket */
		histogram[bits]++;

		loop_count++;
		FUNC3(temp, start_time);
		time_elapsed = FUNC1(temp);
	}

	FUNC2(end_time);

	FUNC3(end_time, start_time);

	FUNC8(FUNC5("Per loop time including overhead: %0.2f ns\n"),
		   FUNC0(end_time) * 1e9 / loop_count);

	return loop_count;
}