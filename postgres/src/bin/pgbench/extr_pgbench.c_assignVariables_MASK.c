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
typedef  int /*<<< orphan*/  CState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,int*) ; 
 char* FUNC3 (char**,char*,int,char*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static char *
FUNC5(CState *st, char *sql)
{
	char	   *p,
			   *name,
			   *val;

	p = sql;
	while ((p = FUNC4(p, ':')) != NULL)
	{
		int			eaten;

		name = FUNC2(p, &eaten);
		if (name == NULL)
		{
			while (*p == ':')
			{
				p++;
			}
			continue;
		}

		val = FUNC1(st, name);
		FUNC0(name);
		if (val == NULL)
		{
			p++;
			continue;
		}

		p = FUNC3(&sql, p, eaten, val);
	}

	return sql;
}