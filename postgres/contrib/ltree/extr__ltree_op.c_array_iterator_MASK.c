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
typedef  void ltree ;
typedef  int /*<<< orphan*/  PGCALL2 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_ARRAY_SUBSCRIPT_ERROR ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static bool
FUNC12(ArrayType *la, PGCALL2 callback, void *param, ltree **found)
{
	int			num = FUNC3(FUNC2(la), FUNC1(la));
	ltree	   *item = (ltree *) FUNC0(la);

	if (FUNC2(la) > 1)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
				 FUNC11("array must be one-dimensional")));
	if (FUNC8(la))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC11("array must not contain nulls")));

	if (found)
		*found = NULL;
	while (num > 0)
	{
		if (FUNC4(FUNC5(callback,
											 FUNC7(item), FUNC7(param))))
		{

			if (found)
				*found = item;
			return true;
		}
		num--;
		item = FUNC6(item);
	}

	return false;
}