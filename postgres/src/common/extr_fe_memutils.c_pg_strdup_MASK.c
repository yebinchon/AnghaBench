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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char const*) ; 

char *
FUNC4(const char *in)
{
	char	   *tmp;

	if (!in)
	{
		FUNC2(stderr,
				"%s", FUNC0("cannot duplicate null pointer (internal error)\n"));
		FUNC1(EXIT_FAILURE);
	}
	tmp = FUNC3(in);
	if (!tmp)
	{
		FUNC2(stderr, "%s", FUNC0("out of memory\n"));
		FUNC1(EXIT_FAILURE);
	}
	return tmp;
}