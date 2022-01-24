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
 int /*<<< orphan*/  log_timezone ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 

const char *
FUNC1(void)
{
	const char *tzn;

	/* Always show the zone's canonical name */
	tzn = FUNC0(log_timezone);

	if (tzn != NULL)
		return tzn;

	return "unknown";
}