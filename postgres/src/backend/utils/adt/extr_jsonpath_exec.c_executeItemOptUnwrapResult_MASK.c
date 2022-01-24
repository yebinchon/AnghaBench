#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {scalar_t__ type; } ;
typedef  TYPE_1__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonValueListIterator ;
typedef  TYPE_2__ JsonValueList ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecResult ;
typedef  int /*<<< orphan*/  JsonPathExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int) ; 
 scalar_t__ jbvArray ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jperOk ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonPathExecResult
FUNC9(JsonPathExecContext *cxt, JsonPathItem *jsp,
						   JsonbValue *jb, bool unwrap,
						   JsonValueList *found)
{
	if (unwrap && FUNC8(cxt))
	{
		JsonValueList seq = {0};
		JsonValueListIterator it;
		JsonPathExecResult res = FUNC5(cxt, jsp, jb, &seq);
		JsonbValue *item;

		if (FUNC7(res))
			return res;

		FUNC2(&seq, &it);
		while ((item = FUNC3(&seq, &it)))
		{
			FUNC0(item->type != jbvArray);

			if (FUNC4(item) == jbvArray)
				FUNC6(cxt, NULL, item, found, false);
			else
				FUNC1(found, item);
		}

		return jperOk;
	}

	return FUNC5(cxt, jsp, jb, found);
}