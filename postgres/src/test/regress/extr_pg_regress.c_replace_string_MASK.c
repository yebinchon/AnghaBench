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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char*,char const*) ; 

void
FUNC6(char *string, const char *replace, const char *replacement)
{
	char	   *ptr;

	while ((ptr = FUNC5(string, replace)) != NULL)
	{
		char	   *dup = FUNC1(string);

		FUNC3(string, dup, ptr - string + 1);
		FUNC2(string, replacement);
		FUNC2(string, dup + (ptr - string) + FUNC4(replace));
		FUNC0(dup);
	}
}