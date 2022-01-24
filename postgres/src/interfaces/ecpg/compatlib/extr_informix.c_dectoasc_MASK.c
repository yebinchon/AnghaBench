#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dscale; } ;
typedef  TYPE_1__ numeric ;
typedef  int /*<<< orphan*/  decimal ;

/* Variables and functions */
 int /*<<< orphan*/  CDECIMALTYPE ; 
 int /*<<< orphan*/  CSTRINGTYPE ; 
 int ECPG_INFORMIX_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 char* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

int
FUNC9(decimal *np, char *cp, int len, int right)
{
	char	   *str;
	numeric    *nres;

	FUNC6(CSTRINGTYPE, (char *) cp);
	if (FUNC5(CDECIMALTYPE, (char *) np))
		return 0;

	nres = FUNC2();
	if (nres == NULL)
		return ECPG_INFORMIX_OUT_OF_MEMORY;

	if (FUNC1(np, nres) != 0)
	{
		FUNC0(nres);
		return ECPG_INFORMIX_OUT_OF_MEMORY;
	}

	if (right >= 0)
		str = FUNC3(nres, right);
	else
		str = FUNC3(nres, nres->dscale);

	FUNC0(nres);
	if (!str)
		return -1;

	/*
	 * TODO: have to take care of len here and create exponential notation if
	 * necessary
	 */
	if ((int) (FUNC8(str) + 1) > len)
	{
		if (len > 1)
		{
			cp[0] = '*';
			cp[1] = '\0';
		}
		FUNC4(str);
		return -1;
	}
	else
	{
		FUNC7(cp, str);
		FUNC4(str);
		return 0;
	}
}