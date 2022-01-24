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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int linenum ; 
 char* rfilename ; 
 int rlinenum ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const char *string, va_list args)
{
	/*
	 * Match the format of "cc" to allow sh users to zic ... 2>&1 | error -t
	 * "*" -v on BSD systems.
	 */
	if (filename)
		FUNC1(stderr, FUNC0("\"%s\", line %d: "), filename, linenum);
	FUNC2(stderr, string, args);
	if (rfilename != NULL)
		FUNC1(stderr, FUNC0(" (rule from \"%s\", line %d)"),
				rfilename, rlinenum);
	FUNC1(stderr, "\n");
}