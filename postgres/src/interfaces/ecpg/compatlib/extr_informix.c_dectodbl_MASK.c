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
 int ECPG_INFORMIX_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,double*) ; 

int
FUNC4(decimal *np, double *dblp)
{
	int			i;
	numeric    *nres = FUNC2();

	if (nres == NULL)
		return ECPG_INFORMIX_OUT_OF_MEMORY;

	if (FUNC1(np, nres) != 0)
	{
		FUNC0(nres);
		return ECPG_INFORMIX_OUT_OF_MEMORY;
	}

	i = FUNC3(nres, dblp);
	FUNC0(nres);

	return i;
}