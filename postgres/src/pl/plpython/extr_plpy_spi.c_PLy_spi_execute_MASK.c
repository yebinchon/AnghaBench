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
 int /*<<< orphan*/  PLy_exc_error ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/ * FUNC2 (char*,long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char**,long*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

PyObject *
FUNC6(PyObject *self, PyObject *args)
{
	char	   *query;
	PyObject   *plan;
	PyObject   *list = NULL;
	long		limit = 0;

	if (FUNC3(args, "s|l", &query, &limit))
		return FUNC2(query, limit);

	FUNC4();

	if (FUNC3(args, "O|Ol", &plan, &list, &limit) &&
		FUNC5(plan))
		return FUNC1(plan, list, limit);

	FUNC0(PLy_exc_error, "plpy.execute expected a query or a plan");
	return NULL;
}