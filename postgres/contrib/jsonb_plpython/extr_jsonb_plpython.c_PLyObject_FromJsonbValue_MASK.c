#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  boolean; int /*<<< orphan*/  numeric; TYPE_1__ binary; } ;
struct TYPE_8__ {int type; TYPE_2__ val; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  Py_RETURN_FALSE ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  Py_RETURN_TRUE ; 
 int /*<<< orphan*/  decimal_constructor ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
#define  jbvBinary 132 
#define  jbvBool 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 
 int /*<<< orphan*/  numeric_out ; 

__attribute__((used)) static PyObject *
FUNC7(JsonbValue *jsonbValue)
{
	switch (jsonbValue->type)
	{
		case jbvNull:
			Py_RETURN_NONE;

		case jbvBinary:
			return FUNC3(jsonbValue->val.binary.data);

		case jbvNumeric:
			{
				Datum		num;
				char	   *str;

				num = FUNC2(jsonbValue->val.numeric);
				str = FUNC0(FUNC1(numeric_out, num));

				return FUNC5(decimal_constructor, "s", str);
			}

		case jbvString:
			return FUNC4(jsonbValue);

		case jbvBool:
			if (jsonbValue->val.boolean)
				Py_RETURN_TRUE;
			else
				Py_RETURN_FALSE;

		default:
			FUNC6(ERROR, "unexpected jsonb value type: %d", jsonbValue->type);
			return NULL;
	}
}