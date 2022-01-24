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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (char const*,char,int) ; 

extern void FUNC3(const char *str, char **class, char **title,
				 char **exe)
{
	char **strlist;

	*class = NULL;
	*title = NULL;
	*exe = NULL;

	if (!str) {
		return;
	}

	strlist = FUNC2(str, ':', true);

	if (strlist && strlist[0] && strlist[1] && strlist[2]) {
		*title = FUNC0(strlist[0]);
		*class = FUNC0(strlist[1]);
		*exe = FUNC0(strlist[2]);
	}

	FUNC1(strlist);
}