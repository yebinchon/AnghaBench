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
typedef  size_t int32 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int32
FUNC3(ArrayType *a, int32 elem)
{
	int32	   *aa,
				c,
				i;

	FUNC2(a);
	c = FUNC0(a);
	aa = FUNC1(a);
	for (i = 0; i < c; i++)
		if (aa[i] == elem)
			return (i + 1);
	return 0;
}