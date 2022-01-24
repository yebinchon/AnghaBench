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
struct timespec {int dummy; } ;

/* Variables and functions */
 long long FUNC0 (struct timespec) ; 

long long FUNC1(struct timespec start, struct timespec end)
{
	long long start_ns, end_ns;

	start_ns = FUNC0(start);
	end_ns = FUNC0(end);
	return end_ns - start_ns;
}