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
typedef  int uint32_t ;
typedef  int time_t ;

/* Variables and functions */
 int TIMESTAMP_MAGIC ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

uint32_t FUNC4(void)
{
	char *env = FUNC1("SOURCE_DATE_EPOCH");
	char *endptr = env;
	time_t fixed_timestamp = -1;
	errno = 0;

	if (env && *env) {
		fixed_timestamp = FUNC2(env, &endptr, 10);

		if (errno || (endptr && *endptr != '\0')) {
			FUNC0(stderr, "Invalid SOURCE_DATE_EPOCH");
			fixed_timestamp = -1;
		}
	}

	if (fixed_timestamp == -1)
		FUNC3(&fixed_timestamp);

	return (((uint32_t) fixed_timestamp) - TIMESTAMP_MAGIC) >> 2;
}