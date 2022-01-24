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
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PLyDatumToOb ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  numeric_out ; 

__attribute__((used)) static PyObject *
FUNC7(PLyDatumToOb *arg, Datum d)
{
	static PyObject *decimal_constructor;
	char	   *str;
	PyObject   *pyvalue;

	/* Try to import cdecimal.  If it doesn't exist, fall back to decimal. */
	if (!decimal_constructor)
	{
		PyObject   *decimal_module;

		decimal_module = FUNC4("cdecimal");
		if (!decimal_module)
		{
			FUNC3();
			decimal_module = FUNC4("decimal");
		}
		if (!decimal_module)
			FUNC2(ERROR, "could not import a module for Decimal constructor");

		decimal_constructor = FUNC6(decimal_module, "Decimal");
		if (!decimal_constructor)
			FUNC2(ERROR, "no Decimal attribute in module");
	}

	str = FUNC0(FUNC1(numeric_out, d));
	pyvalue = FUNC5(decimal_constructor, "s", str);
	if (!pyvalue)
		FUNC2(ERROR, "conversion from numeric to Decimal failed");

	return pyvalue;
}