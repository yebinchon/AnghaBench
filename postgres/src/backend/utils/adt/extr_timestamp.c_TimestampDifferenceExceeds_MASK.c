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
 int FUNC0 (int) ; 

bool
FUNC1(TimestampTz start_time,
						   TimestampTz stop_time,
						   int msec)
{
	TimestampTz diff = stop_time - start_time;

	return (diff >= msec * FUNC0(1000));
}