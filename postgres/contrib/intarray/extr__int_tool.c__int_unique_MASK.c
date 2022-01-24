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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isort_cmp ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

ArrayType *
FUNC4(ArrayType *r)
{
	int			num = FUNC0(r);
	bool		duplicates_found;	/* not used */

	num = FUNC2(FUNC1(r), num, sizeof(int), isort_cmp,
					  &duplicates_found);

	return FUNC3(r, num);
}