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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const) ; 

__attribute__((used)) static char *
FUNC4(const char *sql, int *eaten)
{
	int			i = 0;
	char	   *name;

	do
	{
		i++;
	} while (FUNC0(sql[i]) ||
			 FUNC3("ABCDEFGHIJKLMNOPQRSTUVWXYZ" "abcdefghijklmnopqrstuvwxyz"
					"_0123456789", sql[i]) != NULL);
	if (i == 1)
		return NULL;			/* no valid variable name chars */

	name = FUNC2(i);
	FUNC1(name, &sql[1], i - 1);
	name[i - 1] = '\0';

	*eaten = i;
	return name;
}