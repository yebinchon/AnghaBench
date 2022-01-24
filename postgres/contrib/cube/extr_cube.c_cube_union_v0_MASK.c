#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void** x; } ;
typedef  TYPE_1__ NDBOX ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*,int) ; 
 void* FUNC3 (void*,void*) ; 
 void* FUNC4 (void*,void*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 void* FUNC9 (TYPE_1__*,int) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (int) ; 

NDBOX *
FUNC12(NDBOX *a, NDBOX *b)
{
	int			i;
	NDBOX	   *result;
	int			dim;
	int			size;

	/* trivial case */
	if (a == b)
		return a;

	/* swap the arguments if needed, so that 'a' is always larger than 'b' */
	if (FUNC1(a) < FUNC1(b))
	{
		NDBOX	   *tmp = b;

		b = a;
		a = tmp;
	}
	dim = FUNC1(a);

	size = FUNC0(dim);
	result = FUNC11(size);
	FUNC8(result, size);
	FUNC6(result, dim);

	/* First compute the union of the dimensions present in both args */
	for (i = 0; i < FUNC1(b); i++)
	{
		result->x[i] = FUNC4(
						   FUNC4(FUNC2(a, i), FUNC9(a, i)),
						   FUNC4(FUNC2(b, i), FUNC9(b, i))
			);
		result->x[i + FUNC1(a)] = FUNC3(
									FUNC3(FUNC2(a, i), FUNC9(a, i)),
									FUNC3(FUNC2(b, i), FUNC9(b, i))
			);
	}
	/* continue on the higher dimensions only present in 'a' */
	for (; i < FUNC1(a); i++)
	{
		result->x[i] = FUNC4(0,
						   FUNC4(FUNC2(a, i), FUNC9(a, i))
			);
		result->x[i + dim] = FUNC3(0,
								 FUNC3(FUNC2(a, i), FUNC9(a, i))
			);
	}

	/*
	 * Check if the result was in fact a point, and set the flag in the datum
	 * accordingly. (we don't bother to repalloc it smaller)
	 */
	if (FUNC10(result))
	{
		size = FUNC5(dim);
		FUNC8(result, size);
		FUNC7(result);
	}

	return result;
}