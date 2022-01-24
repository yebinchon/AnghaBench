#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/  numeric; } ;
struct TYPE_11__ {TYPE_1__ val; } ;
typedef  TYPE_2__ JsonbValue ;
typedef  TYPE_3__ JsonValueList ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathExecResult ;
typedef  int /*<<< orphan*/  JsonPathExecContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_SQL_JSON_SUBSCRIPT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jbvNumeric ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jperOk ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  numeric_trunc ; 

__attribute__((used)) static JsonPathExecResult
FUNC14(JsonPathExecContext *cxt, JsonPathItem *jsp, JsonbValue *jb,
			  int32 *index)
{
	JsonbValue *jbv;
	JsonValueList found = {0};
	JsonPathExecResult res = FUNC10(cxt, jsp, jb, &found);
	Datum		numeric_index;
	bool		have_error = false;

	if (FUNC12(res))
		return res;

	if (FUNC4(&found) != 1 ||
		!(jbv = FUNC11(FUNC3(&found), jbvNumeric)))
		FUNC6(FUNC7(ERROR,
							 (FUNC8(ERRCODE_INVALID_SQL_JSON_SUBSCRIPT),
							  FUNC9("jsonpath array subscript is not a single numeric value"))));

	numeric_index = FUNC1(numeric_trunc,
										FUNC5(jbv->val.numeric),
										FUNC2(0));

	*index = FUNC13(FUNC0(numeric_index),
									&have_error);

	if (have_error)
		FUNC6(FUNC7(ERROR,
							 (FUNC8(ERRCODE_INVALID_SQL_JSON_SUBSCRIPT),
							  FUNC9("jsonpath array subscript is out of integer range"))));

	return jperOk;
}