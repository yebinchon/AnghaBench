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
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  JsonValueList ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecResult ;
typedef  int /*<<< orphan*/  JsonPathExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jperOk ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonPathExecResult
FUNC5(JsonPathExecContext *cxt,
				JsonPathItem *cur, JsonPathItem *next,
				JsonbValue *v, JsonValueList *found, bool copy)
{
	JsonPathItem elem;
	bool		hasNext;

	if (!cur)
		hasNext = next != NULL;
	else if (next)
		hasNext = FUNC4(cur);
	else
	{
		next = &elem;
		hasNext = FUNC3(cur, next);
	}

	if (hasNext)
		return FUNC2(cxt, next, v, found);

	if (found)
		FUNC0(found, copy ? FUNC1(v) : v);

	return jperOk;
}