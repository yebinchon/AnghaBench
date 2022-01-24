#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int rawScalar; int nElems; } ;
struct TYPE_12__ {TYPE_2__ binary; TYPE_1__ array; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ val; } ;
typedef  TYPE_4__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  int /*<<< orphan*/  Jsonb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  WJB_BEGIN_ARRAY ; 
 int /*<<< orphan*/  WJB_ELEM ; 
 int /*<<< orphan*/  WJB_END_ARRAY ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*) ; 
 scalar_t__ jbvArray ; 
 scalar_t__ jbvBinary ; 
 scalar_t__ jbvObject ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_4__*) ; 

Jsonb *
FUNC8(JsonbValue *val)
{
	Jsonb	   *out;

	if (FUNC1(val))
	{
		/* Scalar value */
		JsonbParseState *pstate = NULL;
		JsonbValue *res;
		JsonbValue	scalarArray;

		scalarArray.type = jbvArray;
		scalarArray.val.array.rawScalar = true;
		scalarArray.val.array.nElems = 1;

		FUNC7(&pstate, WJB_BEGIN_ARRAY, &scalarArray);
		FUNC7(&pstate, WJB_ELEM, val);
		res = FUNC7(&pstate, WJB_END_ARRAY, NULL);

		out = FUNC4(res);
	}
	else if (val->type == jbvObject || val->type == jbvArray)
	{
		out = FUNC4(val);
	}
	else
	{
		FUNC0(val->type == jbvBinary);
		out = FUNC6(VARHDRSZ + val->val.binary.len);
		FUNC2(out, VARHDRSZ + val->val.binary.len);
		FUNC5(FUNC3(out), val->val.binary.data, val->val.binary.len);
	}

	return out;
}