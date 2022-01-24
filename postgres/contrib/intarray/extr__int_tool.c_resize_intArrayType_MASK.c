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
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 

ArrayType *
FUNC8(ArrayType *a, int num)
{
	int			nbytes;
	int			i;

	/* if no elements, return a zero-dimensional array */
	if (num <= 0)
	{
		FUNC4(num == 0);
		a = FUNC6(INT4OID);
		return a;
	}

	if (num == FUNC0(a))
		return a;

	nbytes = FUNC1(a) + sizeof(int) * num;

	a = (ArrayType *) FUNC7(a, nbytes);

	FUNC5(a, nbytes);
	/* usually the array should be 1-D already, but just in case ... */
	for (i = 0; i < FUNC3(a); i++)
	{
		FUNC2(a)[i] = num;
		num = 1;
	}
	return a;
}