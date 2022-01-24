#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num; int /*<<< orphan*/ * array; } ;
typedef  TYPE_1__ eary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

char *
FUNC5(eary *eary)
{
	char	   *ret,
			   *ptr;
	int			i,
				length = 0;

	if (eary->num == 0)
		return FUNC2("");

	/*
	 * PQescapeString wants 2 * length + 1 bytes of breath space.  Add two
	 * chars per element for the single quotes and one for the comma.
	 */
	for (i = 0; i < eary->num; i++)
		length += FUNC4(eary->array[i]);

	ret = (char *) FUNC1(length * 2 + 4 * eary->num);
	ptr = ret;

	for (i = 0; i < eary->num; i++)
	{
		if (i != 0)
			FUNC3(ptr++, ",");
		FUNC3(ptr++, "'");
		ptr += FUNC0(ptr, eary->array[i], FUNC4(eary->array[i]));
		FUNC3(ptr++, "'");
	}

	return ret;
}