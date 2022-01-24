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
typedef  int int32 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

ArrayType *
FUNC5(ArrayType *a, int32 elem)
{
	ArrayType  *result;
	int32	   *r;
	int32		c;

	FUNC2(a);
	c = FUNC0(a);
	result = FUNC4(c + 1);
	r = FUNC1(result);
	if (c > 0)
		FUNC3(r, FUNC1(a), c * sizeof(int32));
	r[c] = elem;
	return result;
}