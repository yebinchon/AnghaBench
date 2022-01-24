#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  numeric; } ;
struct TYPE_6__ {TYPE_1__ val; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  Numeric ;
typedef  TYPE_2__ JsonbValue ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  jbvNumeric ; 
 int /*<<< orphan*/  numeric_in ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static JsonbValue *
FUNC14(PyObject *obj, JsonbValue *jbvNum)
{
	Numeric		num;
	char	   *str = FUNC8(obj);

	FUNC7();
	{
		Datum		numd;

		numd = FUNC2(numeric_in,
								   FUNC0(str),
								   FUNC4(InvalidOid),
								   FUNC3(-1));
		num = FUNC1(numd);
	}
	FUNC5();
	{
		FUNC9(ERROR,
				(FUNC10(ERRCODE_DATATYPE_MISMATCH),
				 (FUNC11("could not convert value \"%s\" to jsonb", str))));
	}
	FUNC6();

	FUNC13(str);

	/*
	 * jsonb doesn't allow NaN (per JSON specification), so we have to prevent
	 * it here explicitly.  (Infinity is also not allowed in jsonb, but
	 * numeric_in above already catches that.)
	 */
	if (FUNC12(num))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 (FUNC11("cannot convert NaN to jsonb"))));

	jbvNum->type = jbvNumeric;
	jbvNum->val.numeric = num;

	return jbvNum;
}