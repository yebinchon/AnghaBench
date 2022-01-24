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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  PLy_exc_error ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char**,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 

PyObject *
FUNC5(PyObject *self, PyObject *args)
{
	char	   *query;
	PyObject   *plan;
	PyObject   *planargs = NULL;

	if (FUNC3(args, "s", &query))
		return FUNC1(query);

	FUNC4();

	if (FUNC3(args, "O|O", &plan, &planargs))
		return FUNC0(plan, planargs);

	FUNC2(PLy_exc_error, "plpy.cursor expected a query or a plan");
	return NULL;
}