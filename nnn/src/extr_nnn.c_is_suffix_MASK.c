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
 int FALSE ; 
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC2(const char *str, const char *suffix)
{
	if (!str || !suffix)
		return FALSE;

	size_t lenstr = FUNC0(str);
	size_t lensuffix = FUNC0(suffix);

	if (lensuffix > lenstr)
		return FALSE;

	return (FUNC1(str + (lenstr - lensuffix), suffix) == 0);
}