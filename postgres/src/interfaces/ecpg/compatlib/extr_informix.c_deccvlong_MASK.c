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
typedef  int /*<<< orphan*/  numeric ;
typedef  int /*<<< orphan*/  decimal ;

/* Variables and functions */
 int /*<<< orphan*/  CDECIMALTYPE ; 
 int /*<<< orphan*/  CLONGTYPE ; 
 int ECPG_INFORMIX_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int
FUNC6(long lng, decimal *np)
{
	numeric    *nres;
	int			result = 1;

	FUNC5(CDECIMALTYPE, (char *) np);
	if (FUNC4(CLONGTYPE, (char *) &lng))
		return 0;

	nres = FUNC2();
	if (nres == NULL)
		return ECPG_INFORMIX_OUT_OF_MEMORY;

	result = FUNC1(lng, nres);
	if (result == 0)
		result = FUNC3(nres, np);

	FUNC0(nres);
	return result;
}