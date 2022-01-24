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
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int PyInt ;
typedef  int /*<<< orphan*/  ListObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC6(ListObject *self, Py_ssize_t first, Py_ssize_t step,
	  Py_ssize_t slicelen)
{
    PyInt	i;
    PyObject	*list;

    if (step == 0)
    {
	FUNC2(PyExc_ValueError, FUNC1("slice step cannot be zero"));
	return NULL;
    }

    list = FUNC3(slicelen);
    if (list == NULL)
	return NULL;

    for (i = 0; i < slicelen; ++i)
    {
	PyObject	*item;

	item = FUNC0(self, first + i*step);
	if (item == NULL)
	{
	    FUNC5(list);
	    return NULL;
	}

	FUNC4(list, i, item);
    }

    return list;
}