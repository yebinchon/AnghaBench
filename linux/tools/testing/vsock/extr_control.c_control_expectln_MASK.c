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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

void FUNC5(const char *str)
{
	char *line;

	line = FUNC0();
	if (FUNC4(str, line) != 0) {
		FUNC2(stderr, "expected \"%s\" on control socket, got \"%s\"\n",
			str, line);
		FUNC1(EXIT_FAILURE);
	}

	FUNC3(line);
}