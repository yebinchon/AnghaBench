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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(char **sql, char *param, int len, char *value)
{
	int			valueln = FUNC3(value);

	if (valueln > len)
	{
		size_t		offset = param - *sql;

		*sql = FUNC2(*sql, FUNC3(*sql) - len + valueln + 1);
		param = *sql + offset;
	}

	if (valueln != len)
		FUNC1(param + valueln, param + len, FUNC3(param + len) + 1);
	FUNC0(param, value, valueln);

	return param + valueln;
}