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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 long FUNC2 (unsigned char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (long) ; 

unsigned char *FUNC7(const char *name, long *size)
{
	FILE *f;
	unsigned char *data = NULL;
	*size = 0;
	f = FUNC1(name, "r");
	if (f != NULL)
	{
		if (FUNC4(f, 0, SEEK_END) == 0)
		{
	    *size = FUNC5(f);
			if (*size != -1)
			{
				if (FUNC4(f, 0, SEEK_SET) == 0)
				{
					data = (unsigned char *)FUNC6(*size);
					if (data != NULL)
					{
						if (FUNC2(data, sizeof(char), *size, f) != *size)
						{
							FUNC3(data);
							data = NULL;
						}
					}
				}
			}
		}
		FUNC0(f);
	}
	return data;
}