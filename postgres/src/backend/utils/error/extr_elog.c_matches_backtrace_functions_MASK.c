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
 char* backtrace_symbol_list ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static bool
FUNC2(const char *funcname)
{
	char	   *p;

	if (!backtrace_symbol_list || funcname == NULL || funcname[0] == '\0')
		return false;

	p = backtrace_symbol_list;
	for (;;)
	{
		if (*p == '\0')		/* end of backtrace_symbol_list */
			break;

		if (FUNC0(funcname, p) == 0)
			return true;
		p += FUNC1(p) + 1;
	}

	return false;
}