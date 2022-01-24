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
typedef  int /*<<< orphan*/  WindowObject ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  WindowMethods ; 

__attribute__((used)) static PyObject *
FUNC5(PyObject *self, char *name)
{
    PyObject *r;

    if ((r = FUNC4((WindowObject *)(self), name)))
	return r;

    if (FUNC0((WindowObject *)(self)))
	return NULL;

    r = FUNC3((WindowObject *)(self), name);
    if (r || FUNC1())
	return r;
    else
	return FUNC2(WindowMethods, self, name);
}