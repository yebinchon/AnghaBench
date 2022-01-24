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
typedef  int bits8 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC5(ArrayType *array)
{
	int			nelems;
	bits8	   *bitmap;
	int			bitmask;

	/* Easy answer if there's no null bitmap */
	if (!FUNC1(array))
		return false;

	nelems = FUNC4(FUNC2(array), FUNC0(array));

	bitmap = FUNC3(array);

	/* check whole bytes of the bitmap byte-at-a-time */
	while (nelems >= 8)
	{
		if (*bitmap != 0xFF)
			return true;
		bitmap++;
		nelems -= 8;
	}

	/* check last partial byte */
	bitmask = 1;
	while (nelems > 0)
	{
		if ((*bitmap & bitmask) == 0)
			return true;
		bitmask <<= 1;
		nelems--;
	}

	return false;
}