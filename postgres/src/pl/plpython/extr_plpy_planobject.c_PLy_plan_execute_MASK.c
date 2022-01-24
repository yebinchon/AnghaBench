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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,long*) ; 

__attribute__((used)) static PyObject *
FUNC2(PyObject *self, PyObject *args)
{
	PyObject   *list = NULL;
	long		limit = 0;

	if (!FUNC1(args, "|Ol", &list, &limit))
		return NULL;

	return FUNC0(self, list, limit);
}