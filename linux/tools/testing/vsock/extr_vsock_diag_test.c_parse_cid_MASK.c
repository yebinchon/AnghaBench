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
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned long FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static unsigned int FUNC3(const char *str)
{
	char *endptr = NULL;
	unsigned long int n;

	errno = 0;
	n = FUNC2(str, &endptr, 10);
	if (errno || *endptr != '\0') {
		FUNC1(stderr, "malformed CID \"%s\"\n", str);
		FUNC0(EXIT_FAILURE);
	}
	return n;
}