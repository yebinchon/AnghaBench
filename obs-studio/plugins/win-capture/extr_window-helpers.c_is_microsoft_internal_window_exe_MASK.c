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
 scalar_t__ FUNC0 (char const*,char const*,int /*<<< orphan*/ ) ; 
 char** internal_microsoft_exes ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static bool FUNC2(const char *exe)
{
	if (!exe)
		return false;

	for (const char **vals = internal_microsoft_exes; *vals; vals++) {
		if (FUNC0(exe, *vals, FUNC1(*vals)) == 0)
			return true;
	}

	return false;
}