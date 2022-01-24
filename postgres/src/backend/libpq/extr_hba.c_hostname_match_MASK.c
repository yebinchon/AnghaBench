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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static bool
FUNC2(const char *pattern, const char *actual_hostname)
{
	if (pattern[0] == '.')		/* suffix match */
	{
		size_t		plen = FUNC1(pattern);
		size_t		hlen = FUNC1(actual_hostname);

		if (hlen < plen)
			return false;

		return (FUNC0(pattern, actual_hostname + (hlen - plen)) == 0);
	}
	else
		return (FUNC0(pattern, actual_hostname) == 0);
}