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
struct TYPE_4__ {int /*<<< orphan*/  (* func ) (TYPE_1__*,int /*<<< orphan*/ *,int*,int) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PLyObToDatum ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static void
FUNC7(PLyObToDatum *elm, PyObject *list,
							int *dims, int ndim, int dim,
							Datum *elems, bool *nulls, int *currelem)
{
	int			i;

	if (FUNC1(list) != dims[dim])
		FUNC3(ERROR,
				(FUNC5("wrong length of inner sequence: has length %d, but %d was expected",
						(int) FUNC1(list), dims[dim]),
				 (FUNC4("To construct a multidimensional array, the inner sequences must all have the same length."))));

	if (dim < ndim - 1)
	{
		for (i = 0; i < dims[dim]; i++)
		{
			PyObject   *sublist = FUNC0(list, i);

			FUNC7(elm, sublist, dims, ndim, dim + 1,
										elems, nulls, currelem);
			FUNC2(sublist);
		}
	}
	else
	{
		for (i = 0; i < dims[dim]; i++)
		{
			PyObject   *obj = FUNC0(list, i);

			elems[*currelem] = elm->func(elm, obj, &nulls[*currelem], true);
			FUNC2(obj);
			(*currelem)++;
		}
	}
}