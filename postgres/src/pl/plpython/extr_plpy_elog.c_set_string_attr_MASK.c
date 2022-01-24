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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 

__attribute__((used)) static bool
FUNC4(PyObject *obj, char *attrname, char *str)
{
	int			result;
	PyObject   *val;

	if (str != NULL)
	{
		val = FUNC1(str);
		if (!val)
			return false;
	}
	else
	{
		val = Py_None;
		FUNC3(Py_None);
	}

	result = FUNC0(obj, attrname, val);
	FUNC2(val);

	return result != -1;
}