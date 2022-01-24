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
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 

__attribute__((used)) static PyObject *
FUNC2(PyArrayObject *self, PyObject *args)
{
    PyObject *obj;
    if (!FUNC0(args, "O:fill", &obj)) {
        return NULL;
    }
    if (FUNC1(self, obj) < 0) {
        return NULL;
    }
    Py_RETURN_NONE;
}