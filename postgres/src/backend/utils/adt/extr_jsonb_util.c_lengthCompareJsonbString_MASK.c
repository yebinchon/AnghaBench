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
 int FUNC0 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC1(const char *val1, int len1, const char *val2, int len2)
{
	if (len1 == len2)
		return FUNC0(val1, val2, len1);
	else
		return len1 > len2 ? 1 : -1;
}