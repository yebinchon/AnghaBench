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
typedef  int /*<<< orphan*/  OutputObject ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC6(OutputObject *self, PyObject *seq)
{
    PyObject	*iterator;
    PyObject	*item;

    if (!(iterator = FUNC2(seq)))
	return NULL;

    while ((item = FUNC1(iterator)))
    {
	if (FUNC5(self, item))
	{
	    FUNC3(iterator);
	    FUNC3(item);
	    return NULL;
	}
	FUNC3(item);
    }

    FUNC3(iterator);

    /* Iterator may have finished due to an exception */
    if (FUNC0())
	return NULL;

    FUNC4(Py_None);
    return Py_None;
}