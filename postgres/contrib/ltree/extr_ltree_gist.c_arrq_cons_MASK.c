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
typedef  int /*<<< orphan*/  ltree_gist ;
typedef  int /*<<< orphan*/  lquery ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_ARRAY_SUBSCRIPT_ERROR ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC11(ltree_gist *key, ArrayType *_query)
{
	lquery	   *query = (lquery *) FUNC0(_query);
	int			num = FUNC3(FUNC2(_query), FUNC1(_query));

	if (FUNC2(_query) > 1)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
				 FUNC8("array must be one-dimensional")));
	if (FUNC5(_query))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC8("array must not contain nulls")));

	while (num > 0)
	{
		if (FUNC10(key, query) && FUNC9(key, query))
			return true;
		num--;
		query = FUNC4(query);
	}
	return false;
}