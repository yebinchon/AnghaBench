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
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,char*) ; 

__attribute__((used)) static void
FUNC5(char *value, int len, int is_binary, int lineno, int nth)
{
	char	   *value_s;
	bool		malloced = false;

	if (value == NULL)
		value_s = "null";
	else if (!is_binary)
		value_s = value;
	else
	{
		value_s = FUNC0(FUNC2(len) + 1, lineno);
		if (value_s != NULL)
		{
			FUNC3(value, len, value_s);
			value_s[FUNC2(len)] = '\0';
			malloced = true;
		}
		else
			value_s = "no memory for logging of parameter";
	}

	FUNC4("ecpg_free_params on line %d: parameter %d = %s\n",
			 lineno, nth, value_s);

	if (malloced)
		FUNC1(value_s);
}