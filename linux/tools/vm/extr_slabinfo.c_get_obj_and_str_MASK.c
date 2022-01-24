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
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,char**,int) ; 

__attribute__((used)) static unsigned long FUNC3(const char *name, char **x)
{
	unsigned long result = 0;
	char *p;

	*x = NULL;

	if (!FUNC0(name)) {
		x = NULL;
		return 0;
	}
	result = FUNC2(buffer, &p, 10);
	while (*p == ' ')
		p++;
	if (*p)
		*x = FUNC1(p);
	return result;
}