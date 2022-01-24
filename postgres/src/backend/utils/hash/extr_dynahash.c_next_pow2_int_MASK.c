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
 int INT_MAX ; 
 int FUNC0 (long) ; 

__attribute__((used)) static int
FUNC1(long num)
{
	if (num > INT_MAX / 2)
		num = INT_MAX / 2;
	return 1 << FUNC0(num);
}