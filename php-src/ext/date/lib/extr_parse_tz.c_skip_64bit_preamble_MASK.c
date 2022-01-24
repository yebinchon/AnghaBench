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
 scalar_t__ FUNC0 (unsigned char const*,char*,int) ; 

__attribute__((used)) static int FUNC1(const unsigned char **tzf, timelib_tzinfo *tz)
{
	if (FUNC0(*tzf, "TZif2", 5) == 0) {
		*tzf += 20;
		return 1;
	} else if (FUNC0(*tzf, "TZif3", 5) == 0) {
		*tzf += 20;
		return 1;
	} else {
		return 0;
	}
}