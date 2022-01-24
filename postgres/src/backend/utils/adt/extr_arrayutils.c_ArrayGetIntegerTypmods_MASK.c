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
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ CSTRINGOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_ARRAY_ELEMENT_ERROR ; 
 int /*<<< orphan*/  ERRCODE_ARRAY_SUBSCRIPT_ERROR ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int,int,char,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int32 *
FUNC11(ArrayType *arr, int *n)
{
	int32	   *result;
	Datum	   *elem_values;
	int			i;

	if (FUNC0(arr) != CSTRINGOID)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_ARRAY_ELEMENT_ERROR),
				 FUNC7("typmod array must be type cstring[]")));

	if (FUNC1(arr) != 1)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
				 FUNC7("typmod array must be one-dimensional")));

	if (FUNC3(arr))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC7("typmod array must not contain nulls")));

	/* hardwired knowledge about cstring's representation details here */
	FUNC4(arr, CSTRINGOID,
					  -2, false, 'c',
					  &elem_values, NULL, n);

	result = (int32 *) FUNC8(*n * sizeof(int32));

	for (i = 0; i < *n; i++)
		result[i] = FUNC10(FUNC2(elem_values[i]));

	FUNC9(elem_values);

	return result;
}