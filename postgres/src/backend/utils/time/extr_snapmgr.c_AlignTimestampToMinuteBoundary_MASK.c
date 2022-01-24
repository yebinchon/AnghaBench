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
typedef  int TimestampTz ;

/* Variables and functions */
 int USECS_PER_MINUTE ; 

__attribute__((used)) static TimestampTz
FUNC0(TimestampTz ts)
{
	TimestampTz retval = ts + (USECS_PER_MINUTE - 1);

	return retval - (retval % USECS_PER_MINUTE);
}