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
 scalar_t__ FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static inline int FUNC1(const char *array)
{
	if (FUNC0(array, "\r\n", 2) == 0 || FUNC0(array, "\n\r", 2) == 0)
		return 2;
	else if (*array == '\r' || *array == '\n')
		return 1;

	return 0;
}