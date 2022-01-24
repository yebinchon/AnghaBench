#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ndims; int* nelems; } ;
typedef  TYPE_1__ plperl_array_info ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static SV  *
FUNC6(plperl_array_info *info, int first, int last, int nest)
{
	dTHX;
	int			i;
	AV		   *result;

	/* we should only be called when we have something to split */
	FUNC0(info->ndims > 0);

	/* since this function recurses, it could be driven to stack overflow */
	FUNC2();

	/*
	 * Base case, return a reference to a single-dimensional array
	 */
	if (nest >= info->ndims - 1)
		return FUNC3(info, first, last);

	result = FUNC4();
	for (i = first; i < last; i += info->nelems[nest + 1])
	{
		/* Recursively form references to arrays of lower dimensions */
		SV		   *ref = FUNC6(info, i, i + info->nelems[nest + 1], nest + 1);

		FUNC1(result, ref);
	}
	return FUNC5((SV *) result);
}