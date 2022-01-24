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
typedef  int /*<<< orphan*/  float8 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FLOAT8OID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,int) ; 

__attribute__((used)) static float8 *
FUNC6(ArrayType *transarray, const char *caller, int n)
{
	/*
	 * We expect the input to be an N-element float array; verify that. We
	 * don't need to use deconstruct_array() since the array data is just
	 * going to look like a C array of N float8 values.
	 */
	if (FUNC4(transarray) != 1 ||
		FUNC1(transarray)[0] != n ||
		FUNC3(transarray) ||
		FUNC2(transarray) != FLOAT8OID)
		FUNC5(ERROR, "%s: expected %d-element float8 array", caller, n);
	return (float8 *) FUNC0(transarray);
}