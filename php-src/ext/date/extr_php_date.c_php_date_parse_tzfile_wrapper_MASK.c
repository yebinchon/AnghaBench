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
typedef  int /*<<< orphan*/  timelib_tzdb ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/  const*) ; 

timelib_tzinfo *FUNC1(char *formal_tzname, const timelib_tzdb *tzdb, int *dummy_error_code)
{
	return FUNC0(formal_tzname, tzdb);
}