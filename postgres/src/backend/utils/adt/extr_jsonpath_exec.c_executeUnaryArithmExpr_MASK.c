#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int /*<<< orphan*/  type; } ;
struct TYPE_26__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_24__ {int /*<<< orphan*/  numeric; } ;
struct TYPE_25__ {TYPE_1__ val; } ;
typedef  scalar_t__ PGFunction ;
typedef  TYPE_2__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonValueListIterator ;
typedef  TYPE_3__ JsonValueList ;
typedef  TYPE_4__ JsonPathItem ;
typedef  scalar_t__ JsonPathExecResult ;
typedef  int /*<<< orphan*/  JsonPathExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_SQL_JSON_NUMBER_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*,int,TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,TYPE_2__*,TYPE_3__*,int) ; 
 TYPE_2__* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jbvNumeric ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ jperNotFound ; 
 scalar_t__ jperOk ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_4__*) ; 
 int FUNC14 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static JsonPathExecResult
FUNC16(JsonPathExecContext *cxt, JsonPathItem *jsp,
					   JsonbValue *jb, PGFunction func, JsonValueList *found)
{
	JsonPathExecResult jper;
	JsonPathExecResult jper2;
	JsonPathItem elem;
	JsonValueList seq = {0};
	JsonValueListIterator it;
	JsonbValue *val;
	bool		hasNext;

	FUNC13(jsp, &elem);
	jper = FUNC9(cxt, &elem, jb, true, &seq);

	if (FUNC12(jper))
		return jper;

	jper = jperNotFound;

	hasNext = FUNC14(jsp, &elem);

	FUNC2(&seq, &it);
	while ((val = FUNC3(&seq, &it)))
	{
		if ((val = FUNC11(val, jbvNumeric)))
		{
			if (!found && !hasNext)
				return jperOk;
		}
		else
		{
			if (!found && !hasNext)
				continue;		/* skip non-numerics processing */

			FUNC5(FUNC6(ERROR,
								 (FUNC7(ERRCODE_SQL_JSON_NUMBER_NOT_FOUND),
								  FUNC8("operand of unary jsonpath operator %s is not a numeric value",
										 FUNC15(jsp->type)))));
		}

		if (func)
			val->val.numeric =
				FUNC0(FUNC1(func,
													FUNC4(val->val.numeric)));

		jper2 = FUNC10(cxt, jsp, &elem, val, found, false);

		if (FUNC12(jper2))
			return jper2;

		if (jper2 == jperOk)
		{
			if (!found)
				return jperOk;
			jper = jperOk;
		}
	}

	return jper;
}