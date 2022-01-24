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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int32
FUNC5(bool istz, ArrayType *ta)
{
	int32	   *tl;
	int			n;

	tl = FUNC0(ta, &n);

	/*
	 * we're not too tense about good error message here because grammar
	 * shouldn't allow wrong number of modifiers for TIMESTAMP
	 */
	if (n != 1)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC4("invalid type modifier")));

	return FUNC1(istz, tl[0]);
}