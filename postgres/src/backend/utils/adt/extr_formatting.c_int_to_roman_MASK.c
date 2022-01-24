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
typedef  int /*<<< orphan*/  numstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,int) ; 
 scalar_t__ FUNC1 (int) ; 
 char** rm1 ; 
 char** rm10 ; 
 char** rm100 ; 
 int FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static char *
FUNC4(int number)
{
	int			len = 0,
				num = 0;
	char	   *p = NULL,
			   *result,
				numstr[12];

	result = (char *) FUNC1(16);
	*result = '\0';

	if (number > 3999 || number < 1)
	{
		FUNC0(result, '#', 15);
		return result;
	}
	len = FUNC2(numstr, sizeof(numstr), "%d", number);

	for (p = numstr; *p != '\0'; p++, --len)
	{
		num = *p - 49;			/* 48 ascii + 1 */
		if (num < 0)
			continue;

		if (len > 3)
		{
			while (num-- != -1)
				FUNC3(result, "M");
		}
		else
		{
			if (len == 3)
				FUNC3(result, rm100[num]);
			else if (len == 2)
				FUNC3(result, rm10[num]);
			else if (len == 1)
				FUNC3(result, rm1[num]);
		}
	}
	return result;
}