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
typedef  int /*<<< orphan*/  timelib_tzinfo ;

/* Variables and functions */
 unsigned int TIMELIB_TZINFO_PHP ; 
 unsigned int TIMELIB_TZINFO_ZONEINFO ; 
 scalar_t__ FUNC0 (unsigned char const*,char*,int) ; 
 int FUNC1 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const unsigned char **tzf, timelib_tzinfo *tz, unsigned int *type)
{
	/* read marker (TZif) or (PHP) */
	if (FUNC0(*tzf, "PHP", 3) == 0) {
		*type = TIMELIB_TZINFO_PHP;
		return FUNC1(tzf, tz);
	} else if (FUNC0(*tzf, "TZif", 4) == 0) {
		*type = TIMELIB_TZINFO_ZONEINFO;
		return FUNC2(tzf, tz);
	} else {
		return -1;
	}
}