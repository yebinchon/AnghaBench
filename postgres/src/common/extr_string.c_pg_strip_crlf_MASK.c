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
 int FUNC0 (char*) ; 

int
FUNC1(char *str)
{
	int			len = FUNC0(str);

	while (len > 0 && (str[len - 1] == '\n' ||
					   str[len - 1] == '\r'))
		str[--len] = '\0';

	return len;
}