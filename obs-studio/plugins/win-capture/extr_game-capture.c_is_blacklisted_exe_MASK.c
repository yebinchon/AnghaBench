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
 int MAX_PATH ; 
 char** blacklisted_exes ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static bool FUNC3(const char *exe)
{
	char cur_exe[MAX_PATH];

	if (!exe)
		return false;

	for (const char **vals = blacklisted_exes; *vals; vals++) {
		FUNC2(cur_exe, *vals);
		FUNC0(cur_exe, ".exe");

		if (FUNC1(cur_exe, exe) == 0)
			return true;
	}

	return false;
}