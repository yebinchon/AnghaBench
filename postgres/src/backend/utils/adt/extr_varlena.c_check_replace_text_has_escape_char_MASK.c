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
typedef  int /*<<< orphan*/  text ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static bool
FUNC4(const text *replace_text)
{
	const char *p = FUNC0(replace_text);
	const char *p_end = p + FUNC1(replace_text);

	if (FUNC2() == 1)
	{
		for (; p < p_end; p++)
		{
			if (*p == '\\')
				return true;
		}
	}
	else
	{
		for (; p < p_end; p += FUNC3(p))
		{
			if (*p == '\\')
				return true;
		}
	}

	return false;
}