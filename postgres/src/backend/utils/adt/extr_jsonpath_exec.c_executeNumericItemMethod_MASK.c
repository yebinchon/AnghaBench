#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  type; } ;
struct TYPE_17__ {int /*<<< orphan*/  numeric; } ;
struct TYPE_18__ {TYPE_1__ val; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  PGFunction ;
typedef  TYPE_2__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonValueList ;
typedef  TYPE_3__ JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecResult ;
typedef  int /*<<< orphan*/  JsonPathExecContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_NON_NUMERIC_SQL_JSON_ITEM ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ jbvArray ; 
 int /*<<< orphan*/  jbvNumeric ; 
 int /*<<< orphan*/  jperOk ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (int) ; 

__attribute__((used)) static JsonPathExecResult
FUNC14(JsonPathExecContext *cxt, JsonPathItem *jsp,
						 JsonbValue *jb, bool unwrap, PGFunction func,
						 JsonValueList *found)
{
	JsonPathItem next;
	Datum		datum;

	if (unwrap && FUNC2(jb) == jbvArray)
		return FUNC8(cxt, jsp, jb, found, false);

	if (!(jb = FUNC10(jb, jbvNumeric)))
		FUNC4(FUNC5(ERROR,
							 (FUNC6(ERRCODE_NON_NUMERIC_SQL_JSON_ITEM),
							  FUNC7("jsonpath item method .%s() can only be applied to a numeric value",
									 FUNC12(jsp->type)))));

	datum = FUNC1(func, FUNC3(jb->val.numeric));

	if (!FUNC11(jsp, &next) && !found)
		return jperOk;

	jb = FUNC13(sizeof(*jb));
	jb->type = jbvNumeric;
	jb->val.numeric = FUNC0(datum);

	return FUNC9(cxt, jsp, &next, jb, found, false);
}