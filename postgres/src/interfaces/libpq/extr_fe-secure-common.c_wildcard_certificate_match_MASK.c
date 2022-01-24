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
 char const* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static bool
FUNC3(const char *pattern, const char *string)
{
	int			lenpat = FUNC2(pattern);
	int			lenstr = FUNC2(string);

	/* If we don't start with a wildcard, it's not a match (rule 1 & 2) */
	if (lenpat < 3 ||
		pattern[0] != '*' ||
		pattern[1] != '.')
		return false;

	/* If pattern is longer than the string, we can never match */
	if (lenpat > lenstr)
		return false;

	/*
	 * If string does not end in pattern (minus the wildcard), we don't match
	 */
	if (FUNC0(pattern + 1, string + lenstr - lenpat + 1) != 0)
		return false;

	/*
	 * If there is a dot left of where the pattern started to match, we don't
	 * match (rule 3)
	 */
	if (FUNC1(string, '.') < string + lenstr - lenpat)
		return false;

	/* String ended with pattern, and didn't have a dot before, so we match */
	return true;
}