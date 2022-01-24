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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*) ; 

char *FUNC3(char *str)
{
	char *temp;
	size_t len;

	if (!str)
		return str;
	if (!*str)
		return str;

	temp = str;

	/* remove preceding spaces/tabs */
	while (FUNC0(*temp))
		++temp;

	len = FUNC2(str);
	if (temp != str)
		FUNC1(str, temp, len + 1);

	if (len) {
		temp = str + (len - 1);
		while (FUNC0(*temp))
			*(temp--) = 0;
	}

	return str;
}