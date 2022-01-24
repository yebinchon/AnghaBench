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
typedef  int /*<<< orphan*/  BufferObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  BufferMethods ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static PyObject *
FUNC5(PyObject *self, char *name)
{
    PyObject *r;

    if ((r = FUNC1((BufferObject *)(self), name)))
	return r;

    if (FUNC2((BufferObject *)(self)))
	return NULL;

    r = FUNC0((BufferObject *)(self), name);
    if (r || FUNC3())
	return r;
    else
	return FUNC4(BufferMethods, self, name);
}