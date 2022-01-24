#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int boolean; } ;
struct TYPE_29__ {TYPE_1__ val; int /*<<< orphan*/  type; } ;
struct TYPE_28__ {scalar_t__ ob_type; } ;
typedef  TYPE_2__ PyObject ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 TYPE_2__* Py_None ; 
 TYPE_2__* Py_True ; 
 int /*<<< orphan*/  WJB_ELEM ; 
 int /*<<< orphan*/  WJB_VALUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jbvBool ; 
 int /*<<< orphan*/  jbvNull ; 
 TYPE_3__* FUNC14 (int) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static JsonbValue *
FUNC16(PyObject *obj, JsonbParseState **jsonb_state, bool is_elem)
{
	JsonbValue	buf;
	JsonbValue *out;

	if (!(FUNC9(obj) || FUNC10(obj)))
	{
		if (FUNC8(obj))
			return FUNC3(obj, jsonb_state);
		else if (FUNC6(obj))
			return FUNC0(obj, jsonb_state);
	}

	/* Allocate JsonbValue in heap only if it is raw scalar value. */
	if (*jsonb_state)
		out = &buf;
	else
		out = FUNC14(sizeof(JsonbValue));

	if (obj == Py_None)
		out->type = jbvNull;
	else if (FUNC9(obj) || FUNC10(obj))
		FUNC4(obj, out);

	/*
	 * PyNumber_Check() returns true for booleans, so boolean check should
	 * come first.
	 */
	else if (FUNC5(obj))
	{
		out->type = jbvBool;
		out->val.boolean = (obj == Py_True);
	}
	else if (FUNC7(obj))
		out = FUNC1(obj, out);
	else
		FUNC11(ERROR,
				(FUNC12(ERRCODE_FEATURE_NOT_SUPPORTED),
				 (FUNC13("Python type \"%s\" cannot be transformed to jsonb",
						 FUNC2((PyObject *) obj->ob_type)))));

	/* Push result into 'jsonb_state' unless it is raw scalar value. */
	return (*jsonb_state ?
			FUNC15(jsonb_state, is_elem ? WJB_ELEM : WJB_VALUE, out) :
			out);
}