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
typedef  int /*<<< orphan*/  temp ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

void
FUNC4(const char *str, Oid *array, int arraysize)
{
	int			j,
				argNum;
	char		temp[100];
	char		s;

	argNum = 0;
	j = 0;
	for (;;)
	{
		s = *str++;
		if (s == ' ' || s == '\0')
		{
			if (j > 0)
			{
				if (argNum >= arraysize)
				{
					FUNC3("could not parse numeric array \"%s\": too many numbers", str);
					FUNC1(1);
				}
				temp[j] = '\0';
				array[argNum++] = FUNC0(temp);
				j = 0;
			}
			if (s == '\0')
				break;
		}
		else
		{
			if (!(FUNC2((unsigned char) s) || s == '-') ||
				j >= sizeof(temp) - 1)
			{
				FUNC3("could not parse numeric array \"%s\": invalid character in number", str);
				FUNC1(1);
			}
			temp[j++] = s;
		}
	}

	while (argNum < arraysize)
		array[argNum++] = InvalidOid;
}