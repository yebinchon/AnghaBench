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
typedef  int int32 ;
typedef  int bits8 ;
struct TYPE_3__ {int /*<<< orphan*/  flinfo; } ;
typedef  TYPE_1__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC12(FunctionCallInfo fcinfo,
			int32 *nargs, int32 *nulls)
{
	int32		count = 0;
	int			i;

	/* Did we get a VARIADIC array argument, or separate arguments? */
	if (FUNC11(fcinfo->flinfo))
	{
		ArrayType  *arr;
		int			ndims,
					nitems,
				   *dims;
		bits8	   *bitmap;

		FUNC4(FUNC8() == 1);

		/*
		 * If we get a null as VARIADIC array argument, we can't say anything
		 * useful about the number of elements, so return NULL.  This behavior
		 * is consistent with other variadic functions - see concat_internal.
		 */
		if (FUNC6(0))
			return false;

		/*
		 * Non-null argument had better be an array.  We assume that any call
		 * context that could let get_fn_expr_variadic return true will have
		 * checked that a VARIADIC-labeled parameter actually is an array.  So
		 * it should be okay to just Assert that it's an array rather than
		 * doing a full-fledged error check.
		 */
		FUNC4(FUNC5(FUNC9(FUNC10(fcinfo->flinfo, 0))));

		/* OK, safe to fetch the array value */
		arr = FUNC7(0);

		/* Count the array elements */
		ndims = FUNC1(arr);
		dims = FUNC0(arr);
		nitems = FUNC3(ndims, dims);

		/* Count those that are NULL */
		bitmap = FUNC2(arr);
		if (bitmap)
		{
			int			bitmask = 1;

			for (i = 0; i < nitems; i++)
			{
				if ((*bitmap & bitmask) == 0)
					count++;

				bitmask <<= 1;
				if (bitmask == 0x100)
				{
					bitmap++;
					bitmask = 1;
				}
			}
		}

		*nargs = nitems;
		*nulls = count;
	}
	else
	{
		/* Separate arguments, so just count 'em */
		for (i = 0; i < FUNC8(); i++)
		{
			if (FUNC6(i))
				count++;
		}

		*nargs = FUNC8();
		*nulls = count;
	}

	return true;
}